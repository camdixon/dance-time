class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    redirect_to new_session_path, notice: "Successfully created #{@user.name}, You can now login to your account!"
  end
  
  def index
    @user = User.find(session[:user_id])
    @viewDate = Date.today
    @weekStart = @viewDate.beginning_of_week(start_day = :monday)
  end
  
  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to users_path, notice: "You do not have permission to edit #{@user.name}'s profile."
    end
  end

  private

  def user_params
    params.require(:user).permit!
  end
end