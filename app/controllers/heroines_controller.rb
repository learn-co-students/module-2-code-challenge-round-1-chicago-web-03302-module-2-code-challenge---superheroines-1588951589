class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.create(heroine_params)
    @powers = Power.all

    if @heroine.valid?
      HeroinePower.create(heroine_id: @heroine.id, power_id: params[:heroine][:power_id])
      redirect_to heroine_path(@heroine)
    else 
      render :new
    end
    
  end

  private 
  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
end
