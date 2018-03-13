json.extract! swag_request, :id, :user_id, :quantity, :gender, :size, :created_at, :updated_at
json.url swag_request_url(swag_request, format: :json)
