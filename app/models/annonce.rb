class Annonce < ActiveRecord::Base
	validates :marque, presence: true, length: {minimum: 2, maximum: 35 }
	validates :couleur, presence: true, length: {minimum: 2, maximum: 35 }
	mount_uploaders :imgs, ImgUploader
    serialize :imgs, JSON
end
