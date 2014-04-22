class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    redirect_to new_session_path, notice: "Successfully created #{@user.name}, You can now login to your account!"
  end
  
  def index
    if params[:week]
      @viewDate = Date.parse(params[:week])
    else
      @viewDate = Date.today  
    end
    @weekStart = @viewDate.beginning_of_week(start_day = :monday)
    @days_from_this_week = (@viewDate.at_beginning_of_week..@viewDate.at_end_of_week).map
    @user = User.find(session[:user_id])
    if @user == current_user
      render :index
    else
      redirect_to new_session_path, notice: "You need to login first to view schedules."
    end
  end
  
  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to users_path, notice: "You do not have permission to edit #{@user.name}'s profile."
    end
  end
  
  def update
    current_user.update_attributes!(user_params)
    redirect_to users_path, notice: "Successfully updated your profile"
  end

  private

  def user_params
    params.require(:user).permit!
  end
end