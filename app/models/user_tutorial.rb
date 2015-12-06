class UserTutorial < ActiveRecord::Base

	#relation between User and Tutorial < many to many through this table>
	belongs_to :user
	belongs_to :tutorial
end
