json.extract! product, :id, :name, :maintenance_date, :building_location_id, :created_at, :updated_at
json.url product_url(product, format: :json)