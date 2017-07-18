class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :user_movie
  has_many :movies, through: :user_movie
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end