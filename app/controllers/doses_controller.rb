class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = cocktail.find(params:[cocktail_id])
    @dose_cocktail= @cocktail
    if @dose.save!
      redriect_to cocktail_path(cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path(@dose.cocktail)
  end
end

private

 def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
