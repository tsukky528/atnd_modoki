json.array!(@joins) do |join|
  json.extract! join, :id, :name, :title, :comment
  json.url join_url(join, format: :json)
end
