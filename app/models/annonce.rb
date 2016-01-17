class Annonce < ActiveRecord::Base
	belongs_to :user
	validates :marque, presence: true, length: {minimum: 2, maximum: 35 }
	validates :couleur, presence: true, length: {minimum: 2, maximum: 35 }
	validates :user_id, presence: true
	mount_uploaders :imgs, ImgUploader
    serialize :imgs, JSON
end
