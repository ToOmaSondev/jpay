class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @items = Item.all
  end

  def dashboard
    @my_bookings_to_review = Booking.joins(:item).where(bookings: { status: "pending" }, items: { user_id: current_user })
    @my_items = Item.where(user: current_user)
    @my_confirmed_bookings = Booking.where(user: current_user, status: "accepted")
    @pending_bookings = Booking.where(user: current_user, status: "pending")

    @active_incoming_bookings = Booking.joins(:item).where(bookings: { status: "accepted" }, items: { user_id: current_user })
    @inactive_incoming_bookings = Booking.joins(:item).where(bookings: { status: ["cancelled", "declined"] }, items: { user_id: current_user })
  end

  private

  def list_params
    params.require(:item).permit(:name, :item_id)
  end
end
