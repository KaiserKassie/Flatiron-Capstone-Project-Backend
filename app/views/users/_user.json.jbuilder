json.extract! user, :id, :username, :password, :first_name, :birth_date, :created_at, :updated_at
json.url user_url(user, format: :json)
