class Store < ActiveRecord::Base
	has_many :cuisines
	has_many :order_details,	through: :cuisines

	validates_presence_of :name, :address, :phone
end
