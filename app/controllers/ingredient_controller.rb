class IngredientController < ApplicationController
  def index         # GET /ingredient
    @ingredients = Ingredient.all
  end

  def show          # GET /ingredient/:id
    @ingredient = Ingredient.find(params[:id])
  end

  def new           # GET /ingredient/new

  end

  def create        # POST /ingredient

  end

  def edit          # GET /ingredient/:id/edit

  end

  def update        # PATCH /ingredient/:id

  end

  def destroy       # DELETE /ingredient/:id

  end
end
