class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.integer :loc_rut
      t.string :loc_rs
      t.string :loc_direccion
      t.integer :loc_numero
      t.integer :loc_telefono
      t.string :loc_mail

      t.timestamps
    end
  end
end
