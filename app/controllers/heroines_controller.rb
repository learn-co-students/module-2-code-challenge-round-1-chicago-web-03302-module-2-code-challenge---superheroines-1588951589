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
    @powers = Power.all
    @power = Power.find(params[:heroine][:power_id])
    @heroine = Heroine.create(heroine_params)
    @heroine.powers << @power
    if @heroine.save
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
