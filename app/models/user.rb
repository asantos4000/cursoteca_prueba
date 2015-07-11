class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_courses

  before_save :default_values

  enum role: [:guest, :school, :admin]

  def default_values
    self.role ||=0 
  end

  ratyrate_rater

end
