class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user
  
  def current_studio
    if current_user.present?
      current_user.studio
    end 
  end
  helper_method :current_studio
  
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