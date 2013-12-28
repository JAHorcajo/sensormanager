class CreateMedidas < ActiveRecord::Migration
  def change
    create_table :medidas do |t|
      t.belongs_to :Sensor, index: true
      t.timestamp :fecha
      t.float :valor

      t.timestamps
    end
  end
end
