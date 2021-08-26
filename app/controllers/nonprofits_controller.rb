class NonprofitsController < ApplicationController
  before_action :set_nonprofit, except: [:index]

  def index
    @nonprofits = Nonprofit.all
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
