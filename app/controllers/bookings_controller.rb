class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.beach = Beach.find(params[:beach_id])
    @booking.user = current_user
    @booking.total_price = @booking.beach.price * (@booking.end_date - @booking.start_date).to_i
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
