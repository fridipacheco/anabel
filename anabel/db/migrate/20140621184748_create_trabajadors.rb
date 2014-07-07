class CreateTrabajadors < ActiveRecord::Migration
  def change
    create_table :trabajadors do |t|
      t.integer :tra_rut
      t.string :tra_nombre
      t.string :tra_apellidop
      t.string :tra_apellidom
      t.date :tra_nacimiento
      t.integer :tra_telefono
      t.string :tra_direccion
      t.integer :tra_numero
      t.string :tra_email
      t.string :tra_sexo

      t.timestamps
    end
  end
end
