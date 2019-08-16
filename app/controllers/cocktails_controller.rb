class CocktailsController < ApplicationController

  def index         # GET /cocktail
    @cocktails = Cocktail.all
  end

  def show          # GET /cocktail/:id
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def new           # GET /cocktail/new
    # we need @cocktail in our `simple_form_for`
    @cocktail = Cocktail.new
  end

  def create        # POST /cocktail
    @cocktail = Cocktail.new(cocktail_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:cocktail).permit(:name, :photo)
  end
end
