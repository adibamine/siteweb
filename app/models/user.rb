class User < ActiveRecord::Base
	validates :firstName, presence: true, length:{ minimum: 2, maximum: 25}
	validates :lastName, presence: true, length:{ minimum: 2, maximum: 25}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: { case_sensitive: false},
			length: { minimum: 3, maximum: 25},
			format: {with: VALID_EMAIL_REGEX }
end
