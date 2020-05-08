class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
 
  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    @powers = Power.all
    if @heroine.save
      redirect_to @heroine
    else 
      render :new
    end
  end

  def show
  @heroine = Heroine.find(params[:id])
  end

  def edit
  @heroine = Heroine.find(params[:id])
  @powers = Power.all #???
  end

  def update
  @heroine = Heroine.find(params[:id])
    if @heroine.update(heroine_params)
      @heroine.save
      redirect_to @heroine
    end
  end


  
private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, power_ids:[])
  end

end