class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @items = Item.all
  end

  def dashboard
    @my_items = Item.where(user: current_user)
    @bookings = Booking.where(user: current_user)

    @active_incoming_bookings = Booking.joins(:item).where(bookings: { status: 1..2 },  items: { user_id: current_user })
    @inactive_incoming_bookings = Booking.joins(:item).where(bookings: { status: 3..4 }, items: { user_id: current_user })
  end

  private

  def list_params
    params.require(:item).permit(:name, :item_id)
  end
end
