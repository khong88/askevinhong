json.extract! user, :id, :name, :email, :age, :industry, :created_at, :updated_at
json.url user_url(user, format: :json)
