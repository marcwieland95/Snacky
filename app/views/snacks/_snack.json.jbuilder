json.extract! snack, :id, :name, :description, :price, :image, :created_at, :updated_at
json.url snack_url(snack, format: :json)