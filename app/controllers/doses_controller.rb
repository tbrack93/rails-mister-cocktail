class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  before_action :set_ingredient, only: [:create]



  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    if @dose.save
      redirect_to @cocktail
    else
      render "new"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(cocktail)
  end


  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_ingredient
    unless params["dose"]["ingredient_id"].nil?
      @ingredient = Ingredient.find(params["dose"]["ingredient_id"])
    end
  end

  def dose_params
   params.require(:dose).permit(:description)
 end
end
