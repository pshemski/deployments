json.extract! model, :id, :name, :picture, :created_at, :updated_at
json.url model_url(model, format: :json)
