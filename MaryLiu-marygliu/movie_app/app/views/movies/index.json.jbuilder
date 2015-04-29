json.array!(@movies) do |shirt|
  json.extract! movie, :id, :title, :description, :year_released
  json.url movie_url(movie, format: :json)
end
