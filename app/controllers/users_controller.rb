
class UsersController < ApplicationController
  def index
    #user_list
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end
end
