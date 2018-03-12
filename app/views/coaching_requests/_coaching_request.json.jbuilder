json.extract! coaching_request, :id, :user_id, :submitted_at, :description, :status, :created_at, :updated_at
json.url coaching_request_url(coaching_request, format: :json)
