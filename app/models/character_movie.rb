class CharacterMovie < ApplicationRecord
  belongs_to :user
  belongs_to :character
  belongs_to :movies
end
