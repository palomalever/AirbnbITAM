class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :tipo
      t.string :direccion
      t.float :precio
      t.text :descripcion

      t.timestamps
    end
  end
end
