class DashboardController < ApplicationController
  before_filter :current_user

  def index
    @main_goals = current_user.goals
  end

  private

  def current_user
    @current_user ||= User.find_by_username 'jean'
  end
end
