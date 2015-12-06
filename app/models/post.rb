class Post < ActiveRecord::Base
	belongs_to :poster , class_name: :user
	belongs_to :reciever , class_name: :user
	
    #need to be corrected
	belongs_to :course
	belongs_to :tutorial
	has_many :comments

	validates :poster_id , presence: true #, if: :receiver_found
	#validate :receiver_found


	def receiver_found
		m = 0
		unless( reciever_id.nil? )
			++m
		end
		unless ( course_id.nil?)
			++m
		end
		unless (tutorial_id.nil?)
			++m
		end
		if (m == 1)
			#return true
		else
			errors[:base] << "only one receiver for the post"
		end
	end

					
					
end
