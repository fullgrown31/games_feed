class PlatformsController < ApplicationController
  def index
    @platforms = Platform.includes(:games).order(:name)
  end

  def show
    @platform = Platform.includes(:games).find(params[:id])

    redirect_to platforms_path if @platform.nil?
  end
end
