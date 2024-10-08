class UsersController < ApplicationController

  def index
    @users = User.all
    Rails.logger.debug "Users loaded: #{@users.inspect}"
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  if @user.save
    flash[:notice] = "User created successfully."
    redirect_to user_path(@user)
  else
    flash.now[:alert] = "Error creating user."
    render :new
  end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User deleted successfully."
    redirect_to users_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end
end
