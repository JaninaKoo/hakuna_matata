class BeachesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :home]
  before_action :set_beach, only: [:show, :destroy]

  def home
  end

  def index
    @beaches = Beach.all
    @beaches = Beach.where.not(latitude: nil, longitude: nil)
      @markers = @beaches.map do |beach|
        {
        lng: beach.longitude,
        lat: beach.latitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_window", locals: { beach: beach }) }
        }

      end
  end

  def new
    @beach = Beach.new
  end

  def show
    @booking = Booking.new
  end

  def create
    @beach = Beach.new(beach_params)
    @beach.user = current_user

    if @beach.save!
      redirect_to beach_path(@beach)
    else
      render :new
    end
  end

  def destroy
    @beach.destroy
    redirect_to my_beaches_path(@beach)
  end

  def my_beaches
  end

  private

  def set_beach
    @beach = Beach.find(params[:id])
  end

  def beach_params
    params.require(:beach).permit(:name, :location, :description, :price, :photo, :photo_cache)
  end
end
