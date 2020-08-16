class SpotsController < ApplicationController
  def index
    @spots = Spot.geocoded
    @markers = @spots.map do |spot|
      url = {
        "lake": "lake.jpg",
        "river cat 1": "river_cat_1.png",
        "river cat 2": "river_cat_2.svg"
      }
      {
        lat: spot.latitude,
        lng: spot.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { spot: spot }),
        image_url: helpers.asset_url(url[spot.category.to_sym])
      }
    end
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      mail = SpotMailer.with(spot: @spot).create_confirmation
      mail.deliver_now
      redirect_to spots_path
    else
      render :new
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :category, :address)
  end
end
