class NonprofitsController < ApplicationController
  before_action :set_nonprofit, except: [:index]

  def index
    @favorite_sub_categories = params[:favorite_sub_categories]
    @nonprofits = Nonprofit.where(sub_category: @favorite_sub_categories)
  end

  # def create
  #   @nonprofit = Nonnonprofit.new(nonprofit_params)
  #   @nonprofits.save!
  # end

  private

  def set_nonprofit
    @nonprofit = Nonprofit.find(param[:id])
  end

  # def nonprofit_params
  #   params.require(:nonprofit).permit()
  # end
end
