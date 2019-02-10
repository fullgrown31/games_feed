class UsersController < ApplicationController
  def index
    @users = User.includes(:ratings).order(:name).paginate(:page => params[:page], :per_page => 30)
  end

  def show
    @user = User.includes(:ratings).find(params[:id])
  end
end
