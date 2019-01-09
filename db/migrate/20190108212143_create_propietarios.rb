class CreatePropietarios < ActiveRecord::Migration[5.1]
  def change
    create_table :propietarios do |t|
      t.string :nombre
      t.string :celular
      t.references :vehiculo, foreign_key: true

      t.timestamps
    end
  end
end
