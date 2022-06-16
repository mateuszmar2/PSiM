class UserController < ApplicationController
  def list
    @users = User.all
  end

  def show
    user = User.find(params[:id])
  end

  def create
    @user = User.create_or_find_by(user_params)
  end

  def update
    @user.update(user_params)
  end

  def destroy
    @user.delete
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :is_admin, :license_plate)
  end
end
