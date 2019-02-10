class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:games).order(:name)
  end

  def show
    @genre = Genre.includes(:games).find(params[:id])
  end
end
