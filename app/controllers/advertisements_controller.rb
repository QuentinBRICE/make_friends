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
    @advertisement = Advertisement.new(advertisement_params)
    @advertisement.save
    redirect_to advertisement_path, notice: "Annonce crée avec succès."
  end

  private

  def advertisement_params
    params.require(:advertisement).permit(:title, :description, :price, :date)
  end
end
