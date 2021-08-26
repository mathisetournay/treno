class NonprofitsController < ApplicationController
  before_action :set_nonprofit, except: [:index]

  def index
    @nonprofits = Nonprofit.all
  end

  private

  def set_nonprofit
    @nonprofits = Nonprofits.find(params[:id])
  end
end
