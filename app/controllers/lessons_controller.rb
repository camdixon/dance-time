class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @current_date = params[:date] || Date.today

    if @lesson.save
      
    else
      render :new_lesson_modal
    end
  end

  def index
    @lessons = Lesson.all
  end
  
  def new_lesson_modal
    @lesson = Lesson.new
  end
  
  def destroy
    Lesson.destroy(params[:id])
    redirect_to lessons_path
  end

  
  private

  def lesson_params
    params.require(:lesson).permit!
  end
end
