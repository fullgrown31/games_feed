class PlatformsController < ApplicationController
  def index
    @platforms = Platform.includes(:games).order(:name)
  end

  def show
    @platform = Platform.includes(:games).find(params[:id])
  end
end
