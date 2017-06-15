json.extract! station, :id, :name, :description, :address, :phone, :beverage_store, :timetable, :created_at, :updated_at
json.url station_url(station, format: :json)
