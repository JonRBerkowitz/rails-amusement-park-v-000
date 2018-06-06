class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to '/users/new'
    end
  end

  def show
    @user = User.find_by(:id => params[:id])
    if @user == @current_user
      render 'show'
    else
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :height, :tickets, :nausea, :happiness, :admin, :password)
  end

end
