class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find_by(params[:id])
  end

  def edit
    @power = Power.find_by(params[:id])
  end

  def update
    @power = Power.find(params[:id]) #i think i figured it out, but right as time was called, this is incomplete
    heroine = Heroine.find_by(params[:power][:heroine_id])
    @power.heroine << heroine #creates a join, but throws an error, not sure why.
    redirect_to power_path(@power)
  end


  private


  def power_params
    params.require(:power).permit(:heroine_ids)
  end
end
