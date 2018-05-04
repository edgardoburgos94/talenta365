class ZonesController < ApplicationController
  def index
    @zones = Zone.all
  end

  def edit
    @zone = Zone.find(params[:id])
  end

  def update
    @zone = Zone.find(params[:id])
    if @zone.update(zone_params)
      redirect_to :root
    else
      render :edit
    end
  end

  def destroy
    @zone = Zone.find(params[:id])
    @zone.destroy

    redirect_to request.referrer
  end

  private
  def zone_params
    params.require(:zone).permit(:name, town_ids: [])
  end
end
