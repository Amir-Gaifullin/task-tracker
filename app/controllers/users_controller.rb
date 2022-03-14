# frozen_string_literal: true

class UsersController < ApplicationController
  skip_after_action :verify_authorized, only: %i[new create show edit update]

  def show; end

  def edit; end

  def new
    @user = User.new
    @new_user = false
  end

  def create
    @user = User.new(users_params)

    if @user.save
      redirect_to projects_path, notice: "You've successfully signed up!"
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.save
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  def users_params
    params.require(:user).permit(:full_name, :email, :password)
  end
end
