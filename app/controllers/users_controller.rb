class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit]

  def home
  end

  def show
  end

  def edit
    @user = User.new
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :profile_img, :address)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
