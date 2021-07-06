json.extract! pet, :id, :name, :last_seen_at, :email, :fluffy, :colour, :ownwer_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
