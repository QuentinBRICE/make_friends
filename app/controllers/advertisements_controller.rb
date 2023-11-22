class AdvertisementsController < ApplicationController

  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

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
    params.require(:advertisement).permit(:title, :description, :price)
  end
end
