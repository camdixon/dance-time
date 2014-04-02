class User < ActiveRecord::Base
  has_many :lessons
  
  def avatar
    Avatar.from_user(self)
  end
  
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :password, :on => :create
  validates_presence_of :role, :on => :create
  
  def self.is_student(id)
    if User.find[:id].role == 'student'
      return true
    else
      return false
    end
  end
  def self.is_teacher(id)
  end
  def self.is_receptionist(id)
  end
  def self.is_counselor(id)
  end
  def self.is_manager(id)
  end
  def self.is_owner(id)
  end
  
  def self.has_lesson(day, time)
    joins(:lessons).where(lessons: {day: day, time_of_day: time, user_id: self.id})
    return :student_id
  end
  
end
