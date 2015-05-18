json.array!(@users) do |user|
  json.extract! user, :id, :name, :points, :side
  json.url user_url(user, format: :json)
end
