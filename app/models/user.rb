class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  self.inheritance_column = :type


  #validates email
  validates :email , format: {with: /\A([^@\s]+)@student.guc.edu.eg/}

  #user to Courses relation <many to many through usercourses>
  has_many :user_courses
  has_many :courses, through: :user_courses

  #user to tutorials relation <many to many through usertutorials>
  has_many :user_tutorials
  has_many :tutorials, through: :user_tutorials

  has_many :posts
  has_many :comments
end
