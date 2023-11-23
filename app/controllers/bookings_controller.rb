class BookingsController < ApplicationController
  def new
    @advertisement = Advertisement.find(params[:advertisement_id])
    @booking = Booking.new
  end

  def create
    @advertisement = Advertisement.find(params[:advertisement_id])
    @booking = Booking.new(booking_params)
    @booking.advertisement = @advertisement
    @booking.user = current_user

    if @booking.save
      redirect_to advertisement_path(@advertisement), notice: 'Reservation was successfully created.'
    else
      redirect_to advertisement_path, notice: 'Reservation was successfully declined.'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params[:booking]) # Will raise ActiveModel::ForbiddenAttributesError
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
