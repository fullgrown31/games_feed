class GamesController < ApplicationController
  def index
    @games = Game.includes(:ratings).order(:name)
  end

  def show
    @game = Game.includes(:ratings).find(params[:id])
  end
end
