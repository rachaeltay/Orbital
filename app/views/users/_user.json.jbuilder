json.extract! user, :id, :email, :password, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
