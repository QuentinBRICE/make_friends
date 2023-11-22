class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
    @markers = @advertisements.geocoded.map do |advertisement|
      {
        lat: advertisement.latitude,
        lng: advertisement.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {advertisement: advertisement}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  # def create
  #   @advertisement = Advertisement.new(advertisement_params)
  #   if @advertisement.save
  #     redirect_to advertisement_path(@advertisement), notice "Annonce crée avec succès"
  #   else
  #     render :new
  #   end
  # end

  def create
    @advertisement = current_user.advertisements.build(advertisement_params)
    if @advertisement.save
      redirect_to @advertisement, notice: "Annonce crée avec succès"
    else
      render :new
    end
  end

  private

  def advertisement_params
    params.require(:advertisement).permit(:title, :description, :price, :address)
  end
end
