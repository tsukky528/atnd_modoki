json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :image_url, :place
  json.url event_url(event, format: :json)
end
