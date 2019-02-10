class PlatformsController < ApplicationController
  def index
    @platforms = Platform.includes(:games).order(:name).paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @platform = Platform.includes(:games).find(params[:id])
    @games = @platform.games.paginate(:page => params[:page], :per_page => 10)
  end
end
