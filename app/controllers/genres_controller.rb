class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:games).order(:name).paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @genre = Genre.includes(:games).find(params[:id])
    @games = @genre.games.paginate(:page => params[:page], :per_page => 10)
  end
end
