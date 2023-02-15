json.extract! user, :id, :user_name, :first_name, :last_name, :enrollment, :department, :office, :role, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
