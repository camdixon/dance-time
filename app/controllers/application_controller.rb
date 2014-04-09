class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  def week_ahead
    @viewDate = @viewDate + 7.days
    @weekStart = @viewDate.beginning_of_week(start_day = :monday)
  end
  helper_method :week_ahead
  
  def week_back
    @viewDate = @viewDate - 7.days
    @weekStart = @viewDate.beginning_of_week(start_day = :monday)
  end
  helper_method :week_back

end