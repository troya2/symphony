json.extract! user, :id, :created_at, :updated_at
json.url profile_url(user, format: :json)
