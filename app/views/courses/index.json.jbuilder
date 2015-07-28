json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :photo
  json.url course_url(course, format: :json)
end
