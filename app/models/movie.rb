class Movie < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :character_movies, dependent: :destroy
  has_many :characters, through: :character_movies
end
