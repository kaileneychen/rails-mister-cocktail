class CocktailsController < ApplicationController

  def create
    @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save!
      redirect_to root_path(@cocktail)
    else
      render 'new'
    end
  end

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = @Dose.new
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end
