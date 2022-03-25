class Movie < ApplicationRecord
  belongs_to :user
  has_many :characters, dependent: :destroy
  has_many :genres, dependent: :destroy
end
