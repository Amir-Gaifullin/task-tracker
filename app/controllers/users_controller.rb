class UsersController < ApplicationController
  skip_after_action :verify_authorized, only: %i[new create show edit update]
  before_action :set_user, only: %i[show edit update]

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    if @user.save
      redirect_to projects_path, notice: "You've successfully signed up!"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(users_params)
      redirect_to user_path(@user), notice: 'Profile has been updated'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def users_params
    params.require(:user).permit(:full_name, :email, :password)
  end
end
