class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)
    redirect_to users_path, notice: "Successfully created #{@student.first_name}"
  end
  
  def index
    @students = Student.all
  end
  
  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to new_session_path, notice: "Please login to edit #{@student.name}'s profile."
    end
  end

  private

  def student_params
    params.require(:student).permit!
  end
  
end