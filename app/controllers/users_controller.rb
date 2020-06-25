class UsersController < ApplicationController
  before_action :get_params

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.email = params.dig(:user, :email)
    @user.save!
    redirect_to admins_path
  end

  private

  def get_params
    params.permit!
  end

end
