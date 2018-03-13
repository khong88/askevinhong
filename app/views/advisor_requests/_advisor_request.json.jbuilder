json.extract! advisor_request, :id, :user_id, :company_id, :submitted_at, :description, :industry, :status, :created_at, :updated_at
json.url advisor_request_url(advisor_request, format: :json)
