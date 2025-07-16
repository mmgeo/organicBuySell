class FarmersController < ApplicationController
  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(farmer_params)
    if @farmer.save
      redirect_to @farmer, notice: 'Farmer profile created successfully.'
    else
      render :new
    end
  end

  def show
    @farmer = Farmer.find(params[:id])
  end

  private
  def farmer_params
    params.require(:farmer).permit(:name, :photo_id, :farm_location, :is_organic)
  end
end 