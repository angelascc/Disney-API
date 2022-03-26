json.extract! @character, :image, :name, :age, :weight, :story
json.movies @character.movies do |movie|
  json.extract! movie, :image, :title, :date_created, :rating,
end
