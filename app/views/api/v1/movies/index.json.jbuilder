json.array! @movies do |movie|
  json.extract! movie, :image, :title, :date_created
end
