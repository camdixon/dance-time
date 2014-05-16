class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @current_date = params[:date] || Date.today

    if @lesson.save
      redirect_to users_path, notice: "You scheduled a lesson."
    else
      render :new
    end
  end

  def index
    @lessons = Lesson.all
  end
  
  def new_lesson
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  private

  def lesson_params
    params.require(:lesson).permit!
  end
end
