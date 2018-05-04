class TownsController < ApplicationController
  def index
    @towns = Town.all
  end

  def edit
    @town = Town.find(params[:id])
  end

  def update
    @town = Town.find(params[:id])
    if @town.update(town_params)
      redirect_to towns_path
    else
      render :edit
    end
  end

  def destroy
    @town = Town.find(params[:id])
    @town.destroy

    redirect_to request.referrer
  end

  private
  def town_params
    params.require(:town).permit(:name, :status, zone_ids: [])
  end
end
