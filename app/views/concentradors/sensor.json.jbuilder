json.array!(@concentrador_sensor) do |concentrador_sensor|
  json.extract! concentrador_sensor, :nombre, :descripcion, :estado, :parametro
  json.url concentrador_url(concentrador_sensor, format: :json)
end
