json.extract! film, :id, :title, :date, :director, :producer, :episode, :created_at, :updated_at
json.url film_url(film, format: :json)
