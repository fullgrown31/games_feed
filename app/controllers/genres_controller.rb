class GenresController < ApplicationController
  def index
    @genres = Genre.includes(:games).order(:name)
  end

  def show
    @genre = Genre.includes(:games).find(params[:id])

    redirect_to genres_path if @genre.nil?
  end
end
