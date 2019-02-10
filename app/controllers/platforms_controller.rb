class PlatformsController < ApplicationController
  def index
    @platforms = Platform.order(:name)
  end

  def show
    @platform = Platform.includes(:games).find(params[:id])
  end
end
