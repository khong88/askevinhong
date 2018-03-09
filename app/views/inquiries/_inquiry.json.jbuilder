json.extract! inquiry, :id, :description, :user_id, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
