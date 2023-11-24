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
    @booking.save
    if @booking.save!
      redirect_to dashboard_path(tab: 'mes_annonces'), notice: 'Annonce créee avec succès.'
    else
      redirect_to advertisements_path, notice: 'Reservation was successfully declined.'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params[:booking])
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :total_price)
  end
end
