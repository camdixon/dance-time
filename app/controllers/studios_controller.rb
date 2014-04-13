class StudiosController < ApplicationController
  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.create!(studio_params)
    redirect_to users_path, notice: "Successfully created #{@studio.name}"
  end
  
  def index
    @studio = Studio.find(current_user.studio_id)
  end
  
  private
  
  def studio_params
    params.require(:studio).permit!
  end
end