class Store < ActiveRecord::Base
	has_many :cuisines
	has_many :order_details,	through: :cuisines

	mount_uploader :image, ImageUploader

	validates_presence_of :name, :address, :phone
end
