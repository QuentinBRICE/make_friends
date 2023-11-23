class DashboardsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @user = current_user
    @advertisement = Advertisement.find(params[:id])
  end

  def edit
    @advertisements = Advertisement.all
  end

  def update
    @advertisement = Advertisement.update(params[:id])
    if @advertisement.update(advertisement_params)
      redirect_to_dashboard_path(@dashboard)
    else
      render 'edit'
    end
  end

  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy
    redirect_to dashboard_path, notice: "Annonce supprimée avec succès.", status: :see_other
  end

  private

  def advertisement_params
    params.require(:advertisement).permit(:title, :description, :price)
  end
end
