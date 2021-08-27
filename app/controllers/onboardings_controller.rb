class OnboardingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @categories = Nonprofit::CATEGORIES.keys
  end

  def create
    @user = User.new(user_params)
    @user.save!
    redirect_to nonprofits_path(favorite_sub_categories: user_params[:favorite_sub_categories])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :email, :password, :donation_budget, favorite_sub_categories: [])
  end
end
