json.array!(@observacions) do |observacion|
  json.extract! observacion, :id, :thermostat_id, :description
  json.url observacion_url(observacion, format: :json)
end
