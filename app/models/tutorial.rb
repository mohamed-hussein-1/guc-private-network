class Tutorial < ActiveRecord::Base
	
	#Relation between user and tutorial through USerTutorials Table
	has_many :user_tutorials
	has_many :users , through: :user_tutorials


	has_many :posts
end