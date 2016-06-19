class Admin::Cuisine < Cuisine
	belongs_to :store
	mount_uploader :image, ImageUploader
end
