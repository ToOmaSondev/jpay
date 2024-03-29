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
      flash[:success] = 'Item was add to your Dashboard'
      redirect_to dashboard_path(@dashboard)
    else
      render :new
    end
  end

  def status
    @booking = Booking.find(params[:id])
    if params[:accepted] == "true"
      @booking.accepted!
    else
      @booking.declined!
    end
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date)
  end
end
