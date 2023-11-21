class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def index
    @advertisements = Advertisement.all
  end

  def new
    @advertisement = Advertisement.new
  end

  def edit
  end

  def create
    @advertisement = Advertisement.new(advertisement_params)
  end

  def update
  end

  def destroy
  end

  private

  def advertisement_params
    params.require(:advertisement).permit(:title, :description, :price)
  end
end
