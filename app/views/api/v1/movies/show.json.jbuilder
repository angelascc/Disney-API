json.extract! @movie, :image, :title, :date_created, :rating
json.genre @movie.genre, :image, :name

json.characters @movie.characters do |character|
  json.extract! character, :image, :name, :age, :weight, :story
end
