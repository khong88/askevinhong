json.extract! company, :id, :name, :email, :size, :industry, :created_at, :updated_at
json.url company_url(company, format: :json)
