json.array! @characters do |character|
  json.extract! character, :image, :name
end
