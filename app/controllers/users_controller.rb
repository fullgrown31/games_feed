class UsersController < ApplicationController
  def index
    @users = User.includes(:ratings).order(:name)
  end

  def show
    @user = User.includes(:ratings).find(params[:id])
  end
end
