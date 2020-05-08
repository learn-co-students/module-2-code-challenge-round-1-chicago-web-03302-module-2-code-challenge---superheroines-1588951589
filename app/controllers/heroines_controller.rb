class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find_by(params[:id])
  end 

  def new
    @heroine = Heroine.new
  end

  def create 
   @heroine = Heroine.create(heroine_params)
   @power = Power.find(params[:heroine][:power_ids])
    @heroine_power = HeroinePower.create{power_id: @power_id}
    @heroine_power.save
    redirect_to heroines_path(@heroines)
  end 
end


private 

def heroine_params
  params.require(:heroine).permit(
    :name,
    :super_name,
  )
end

def heroine_power_params
  params.require(:heroine_power).permit(
    :heroine_id,  
    :power_id,
  )
end 


