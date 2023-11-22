class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.advertisement = @advertisement
    if @booking.save
      redirect_to advertisement_path(@advertisement), notice: 'Reservation was successfully created.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :total_price)
  end
end
