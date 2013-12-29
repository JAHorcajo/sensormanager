json.array!(@usuarioequipos) do |usuarioequipo|
  json.extract! usuarioequipo, :id, :Usuarios, :Categoria
  json.url usuarioequipo_url(usuarioequipo, format: :json)
end
