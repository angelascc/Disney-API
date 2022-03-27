class Genre < ApplicationRecord
  belongs_to :user
  has_many :movies, dependent: :destroy
end
