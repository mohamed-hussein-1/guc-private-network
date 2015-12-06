class Student < User
	validates :semester , numericality: {greater_than_or_equal: 1 ,
   less_than_or_equal: 10 , only_integer: true }
end
