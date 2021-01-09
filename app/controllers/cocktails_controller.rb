class CocktailsController < ApplicationController

  def create
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save!
    # redirect_to cocktail_path(@cocktail)

  end

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end
