class BookingsController < ApplicationController
  def new
    @advertisement = Advertisement.find(params[:advertisement_id])
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

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Accepted"
    if @booking.save
      redirect_to dashboard_path, notice: "Booking accepté !"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :total_price)
  end
end
