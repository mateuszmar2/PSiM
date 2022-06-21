class SpotController < ApplicationController
def list
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def create
    @spot = Spot.create_or_find_by(spot_params)
  end

  def update
    @spot.update(spot_params)
  end

  def destroy
    @spot.delete
  end

  def spot_params
    params.require(:spot).permit(:coordinate_x, :coordinate_y)
  end
end
