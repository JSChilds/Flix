class Movie < ApplicationRecord
	has_many :user_movie
	has_many :users, through: :user_movie
	has_many :reviews

	mount_uploader :image, ImageUploader
end