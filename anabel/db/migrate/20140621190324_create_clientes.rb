class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :cli_rut
      t.string :cli_nombre
      t.string :cli_apellidop
      t.string :cli_apellidom
      t.integer :cli_telefono
      t.string :cli_direccion
      t.integer :cli_numero
      t.string :cli_email

      t.timestamps
    end
  end
end
