json.array!(@courses) do |course|
  json.extract! course, :id, :title, :description, :seiue_id, :if_open, :subject
  json.url course_url(course, format: :json)
end
