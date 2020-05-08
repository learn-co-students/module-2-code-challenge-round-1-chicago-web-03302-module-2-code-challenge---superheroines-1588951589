class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
      @heroine = Heroine.new(heroine_params)
      #power = Power.find(params[:heroine][:power_id])
      #@heroine.powers << power
      if @heroine.valid?
         @heroine.save
         redirect_to @heroine
      else
        flash[:message] = "Invalid"
        redirect_to new_heroine_path
      end
    end
  

    private

    def heroine_params
      params.require(:heroine).permit(
        :name,
        :super_name,
        :power_id
      )
    end

end
