class Course < ActiveRecord::Base
	has_many :user_courses
	has_many :users , through: :user_courses

	
	has_many :posts
	validates :name , uniqueness:  true
end