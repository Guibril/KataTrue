class ExercicesController < ApplicationController

  def index
  end

  def new
    
  end

  def create
    render plain: params[:exercices].inspect
  end

end
