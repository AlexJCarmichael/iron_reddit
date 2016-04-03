
class UsersController < ApplicationController
  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_name: params[:user][:user_name],
                        first_name: params[:user][:first_name],
                        last_name: params[:user][:last_name],
                        email: params[:user][:last_name])
    redirect_to user_path(@user.id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :users
  end
end
