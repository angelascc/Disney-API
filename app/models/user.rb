class User < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :characters, dependent: :destroy
  has_many :movies, dependent: :destroy
  has_many :genres, dependent: :destroy
  has_many :character_movies, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
