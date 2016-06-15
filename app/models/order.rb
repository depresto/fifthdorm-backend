class Order < ActiveRecord::Base
	has_many 	:order_details
	has_many 	:cuisines,		through: :order_details
	belongs_to	:user
end
