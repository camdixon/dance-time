class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.lessons.build(lesson_params)
    #@lesson.scheduled_on = Date.today

    if @lesson.save
      redirect_to users_path, notice: "You scheduled a lesson."
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
