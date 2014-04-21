class Studio < ActiveRecord::Base
  has_many :users
  has_many :students
    
  validates_presence_of :name, :on => :create
  validates_uniqueness_of :name, :on => :create
  
  def self.studio_teachers()
    #joins(:studios).where(studios: {id: current_user.studio_id})
    current_studio.users
  end
  
end
