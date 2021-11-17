class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.item = @item
    if @booking.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date)
  end
end
