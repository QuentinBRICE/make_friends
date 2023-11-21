class AdvertisementsController < ApplicationController
  
  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new(advertisement_params)

    if @advertisement.save
      redirect_to @advertisement, notice: "Annonce crée avec succès."
    else
      render :new
    end
  end

  private

  def advertisement_params
    params.require(:advertisement).permit(:title, :description, :price, :date)
  end

end
