class Admin::Store < Store
	has_many :cuisine
	mount_uploader :image, ImageUploader
end
