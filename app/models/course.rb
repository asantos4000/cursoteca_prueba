class Course < ActiveRecord::Base

  has_many :users, through: :user_courses 
  has_many :comments, dependent: :destroy
  belongs_to :user

  paginates_per 20

end
