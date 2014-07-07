class CreateBodegas < ActiveRecord::Migration
  def change
    create_table :bodegas do |t|
      t.integer :bod_rut
      t.string :bod_rs
      t.string :bod_direccion
      t.integer :bod_numero
      t.integer :bod_telefono
      t.string :bod_mail

      t.timestamps
    end
  end
end
