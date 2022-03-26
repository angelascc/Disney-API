class Character < ApplicationRecord
  belongs_to :user
  has_many :character_movies, dependent: :destroy
  has_many :movies, through: :character_movies
end
