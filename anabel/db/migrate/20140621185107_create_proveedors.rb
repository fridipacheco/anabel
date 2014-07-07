class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.integer :prov_rut
      t.string :prov_nombre
      t.string :prov_apellidop
      t.string :prov_apellidom
      t.integer :prov_telefono
      t.string :prov_direccion
      t.integer :prov_numero
      t.string :prov_email

      t.timestamps
    end
  end
end
