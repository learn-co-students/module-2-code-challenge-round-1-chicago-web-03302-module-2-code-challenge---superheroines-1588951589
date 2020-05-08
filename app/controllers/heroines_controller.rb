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
    @heroine = Heroine.create(name: params[:name], super_name: params[:super_name])
    @heroine_power = HeroinePower.create(heroine_id: @heroine.id, power_id: params[:power_id])
    redirect_to heroine_path(@heroine)
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
      @heroine = Heroine.update(name: params[:name], super_name: params[:super_name])
      @heroine_power = HeroinePower.update(heroine_id: @heroine.id, power_id: params[:power_id])
      redirect_to heroine_path(@heroine)
  end

  end


end
