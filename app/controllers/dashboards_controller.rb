class DashboardsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def edit
    @advertisements = Advertisement.all
  end

  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy
    redirect_to dashboard_path, notice: "Annonce supprimée avec succès."
  end
end
