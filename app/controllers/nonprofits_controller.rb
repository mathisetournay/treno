class NonprofitsController < ApplicationController
  before_action :set_nonprofit, except: [:index]

  def index
    @nonprofits = Renting.where(user: current_user)
  end

   private

  def set_nonprofit
    @nonprofits = Nonnonprofits.find(params[:id])
  end
end
