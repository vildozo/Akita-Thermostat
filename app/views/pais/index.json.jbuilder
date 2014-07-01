json.array!(@pais) do |pai|
  json.extract! pai, :id, :nombre, :codigo
  json.url pai_url(pai, format: :json)
end
