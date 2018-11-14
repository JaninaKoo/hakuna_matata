class DashboardController < ApplicationController
  def show
    @user = current_user
    @bookings = Booking.all
  end

# def destroy
#   @Booking.destroy
#   redirect_to bookings_url, notice: 'Restaurant was successfully destroyed.'
# end
end
