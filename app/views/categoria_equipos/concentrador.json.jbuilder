json.array!(@categoria_concentrador) do |categoria_concentrador|
  json.extract! categoria_concentrador, :nombre, :descripcion, :estado
  json.url categoria_equipo_url(categoria_concentrador, format: :json)
end
