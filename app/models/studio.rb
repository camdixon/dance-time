class Studio < ActiveRecord::Base
  has_many :users
  has_many :students
    
  validates_presence_of :name, :on => :create
  
end
