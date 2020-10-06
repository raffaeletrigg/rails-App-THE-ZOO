class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    @animals = [ 'baccalao', 'panda', 'delfino', 'coccodrillo', 'giraffa']
  end

  def show
    @animal = Animal.find(params[:id])
    authorize @animal
  end
end
