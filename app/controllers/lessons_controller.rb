class LessonsController < ApplicationController
  
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.lessons.build(lesson_params)
    @lesson.attended_on = Date.today

    if @attendance.save
      redirect_to users_path, notice: "You've scheduled a lesson."
    else
      render :new
    end
  end

  def index
  end

  
  private

  def lesson_params
    params.require(:lesson).permit(:room)
  end
end
