json.array!(@sensor_medida) do |sensor_medida|
  json.extract! sensor_medida, :fecha, :valor
  json.url sensor_url(sensor_medida, format: :json)
end
