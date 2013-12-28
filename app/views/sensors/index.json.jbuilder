json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :Concentrador_id, :nombre, :descripcion, :estado, :parametro, :valor, :uds
  json.url sensor_url(sensor, format: :json)
end
