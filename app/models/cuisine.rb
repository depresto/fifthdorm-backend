class Cuisine < ActiveRecord::Base
	belongs_to 	:store
	has_many	:order_details

	mount_uploader :image, ImageUploader

	validates_presence_of 		:name, :price
	validates_numericality_of 	:price
end
