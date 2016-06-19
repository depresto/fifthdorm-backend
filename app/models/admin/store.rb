class Admin::Store < Store
	has_many :cuisine
	has_many :order_detail,	through: :cuisine

	mount_uploader :image, ImageUploader
end
