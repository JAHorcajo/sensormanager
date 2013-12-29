class Usuarioequipo < ActiveRecord::Base
  belongs_to :Usuarios
  belongs_to :categoria_equipos
end
