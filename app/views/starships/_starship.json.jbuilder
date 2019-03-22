json.extract! starship, :id, :name, :model, :manufacturer, :cost_in_credits, :length, :max_atmosphering_speed, :crew, :passengers, :cargo_capacity, :consumables, :hyperdrive_rating, :mglt, :starship_class, :pilots, :created_at, :updated_at
json.url starship_url(starship, format: :json)
