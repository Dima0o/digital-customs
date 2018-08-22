class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    puts '=============='
    puts '=============='
    puts '=============='
    puts @user.inspect
    puts '=============='
    puts '=============='
    puts '=============='
  end

  def show
    @user = User.find(params[:id])
    puts '=============='
    puts '=============='
    puts '=============='
    puts @user.inspect
    puts '=============='
    puts '=============='
    puts '=============='
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :first_name, :last_name)
  end
end
