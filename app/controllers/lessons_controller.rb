class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    #get main lesson params
    @lesson = Lesson.new(lesson_params)
    @current_date = params[:date] || Date.today
    
    #set date, time, and length of lesson
    @lesson_length = params[:lesson_length]
    #start time is in lesson_params, but end_time is not and needs to be calc. and saved
    @start_time = @lesson.start_time
    @end_time = @start_time + (@lesson_length.to_i - 1).minutes
    @lesson.end_time = @end_time
    @lesson.day = @start_time.to_date

    if @lesson.save
      redirect_to users_path, notice: "Lesson Scheduled!"
    else
      render :new_lesson
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
  
  def edit
    Lesson.find(params[:id]).update(lesson_params)
  end
  
  def noshow
  end
  
  def charge
  end

  
  private

  def lesson_params
    params.require(:lesson).permit!
  end
end
