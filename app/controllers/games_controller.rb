class GamesController < ApplicationController
  def index
    @games = Game.includes(:ratings).order(:name).paginate(:page => params[:page], :per_page => 30)
  end

  def show
    @game = Game.includes(:ratings).find(params[:id])
  end
end
