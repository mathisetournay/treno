class OnboardingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @sub_categories_by_category = Nonprofit::CATEGORIES
    @categories = Nonprofit::CATEGORIES.keys
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in @user
      redirect_to nonprofits_path(favorite_sub_categories: user_params[:favorite_sub_categories])
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :email, :password, :avatar, :donation_budget, favorite_sub_categories: [])
  end
end
