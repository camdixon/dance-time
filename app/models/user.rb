class User < ActiveRecord::Base
  has_many :lessons
  has_many :students, through: :lessons
  belongs_to :studio
  
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
  
  def has_lesson(day, time) #see Time class to debug
    db_time = Time.at(time.hour) 
    User.joins(:lessons).where(lessons: {scheduled_on: day, time_of_day: db_time})
  end
  
  def lessons_at(datetime)
    lessons.where('start_time < ? AND end_time > ?', datetime, datetime)
  end
  
end
