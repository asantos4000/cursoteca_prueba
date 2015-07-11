json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :category, :price, :photo, :commission
  json.url course_url(course, format: :json)
end
