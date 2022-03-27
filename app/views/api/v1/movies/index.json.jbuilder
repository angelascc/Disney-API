json.array! @movies do |movie|
  json.extract! movie, :id, :image, :title, :date_created
end
