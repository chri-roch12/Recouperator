class UsersController < ApplicationController

    before_action :authenticate_user!

  def index
    @user = current_user
  end

  def show
    if User.exists?(params[:id])
      @user = User.find(params[:id])
    else
      redirect_to root_path
    end
  end

end
