class OnboardingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def create
    @user = User.new(user_params)
    @user.save
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :email, :password, :donation_budget, favorite_sub_categories: [])
  end
end
