json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :cost, :location, :time, :date
  json.url event_url(event, format: :json)
end
