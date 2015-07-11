class Course < ActiveRecord::Base

  has_many :user_courses
end
