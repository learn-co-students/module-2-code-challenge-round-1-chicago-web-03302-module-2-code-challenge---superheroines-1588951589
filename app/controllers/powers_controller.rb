class PowersController < ApplicationController
  
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def edit
    @power = Power.find(params[:id])
    @heroines = Heroine.all
  end

  def update
    @power = Power.find(params[:id])
    @heroines = Heroine.all
    @power.update
  end


  private

  def power_powers
    params.require(:power).permit(:name, :description)
  end

end
