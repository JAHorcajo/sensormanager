json.array!(@medidas) do |medida|
  json.extract! medida, :id, :Sensor_id, :fecha, :valor
  json.url medida_url(medida, format: :json)
end
