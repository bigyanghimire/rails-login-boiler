class DashboardController < ApplicationController
  protect_from_forgery

  before_action :authenticate_user!
  def index
  end
end
