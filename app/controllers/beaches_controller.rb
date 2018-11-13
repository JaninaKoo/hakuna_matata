class BeachesController < ApplicationController
  before_action :set_beach, only: [:show, :destroy]

  def index
    @beaches = Beach.all
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
    if @beach.save
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
    params.require(:beach).permit(:name, :location, :description, :price)
  end
end
