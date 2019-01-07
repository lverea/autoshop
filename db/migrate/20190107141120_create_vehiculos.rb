class CreateVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vehiculos do |t|
      t.string :dominio
      t.string :descripcion

      t.timestamps
    end
  end
end
