class Course < ActiveRecord::Base

  has_many :users, through: :user_courses 
  belongs_to :user
end
