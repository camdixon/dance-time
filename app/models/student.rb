class Student < ActiveRecord::Base
  has_many :lessons
  belongs_to :studio
  
  def avatar
    Avatar.from_student(self)
  end
  
  validates_presence_of :first_name, :on => :create
  validates_presence_of :last_name, :on => :create
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def partner_name
    "#{partner_first_name} #{partner_last_name}"
  end
  
  def both_names
    "#{full_name} & #{partner_name}"
  end
  
end
