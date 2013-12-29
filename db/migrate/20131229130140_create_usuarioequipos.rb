class CreateUsuarioequipos < ActiveRecord::Migration
  def change
    create_table :usuarioequipos do |t|
      t.belongs_to :Usuarios, index: true
      t.belongs_to :categoria_equipos, index: true

      t.timestamps
    end
  end
end
