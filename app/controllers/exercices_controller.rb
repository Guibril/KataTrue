class ExercicesController < ApplicationController

  def index
    @exercice = Exercice.all
  end

  def show
    @exercice = Exercice.find(params[:id])
  end

  def new
    @exercice = Exercice.new
  end

  def edit
  @exercice = Exercice.find(params[:id])
  end

  def create
  @exercice = Exercice.new(exercice_params)

    if @exercice.save
      redirect_to @exercice
    else
      render 'new'
    end
  end

  def update
    @exercice = Exercice.find(params[:id])

    if @exercice.update(exercice_params)
      redirect_to @exercice
    else
      render 'edit'
    end
  end

  private
  def exercice_params
    params.require(:exercices).permit(:title, :code)
  end

end
