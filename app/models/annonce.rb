class Annonce < ActiveRecord::Base
	mount_uploaders :imgs, ImgUploader
    serialize :imgs, JSON
end
