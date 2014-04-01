class Student < ActiveRecord::Base
  def avatar
    Avatar.from_student(self)
  end
  
  validates_presence_of :first_name, :on => :create
  validates_presence_of :last_name, :on => :create
  
end
