class CreateCargoTrabajadors < ActiveRecord::Migration
  def change
    create_table :cargo_trabajadors do |t|
      t.date :cat_alta
      t.date :cat_baja
      t.integer :cat_permiso
      t.integer :cat_base
      t.integer :cat_porcentaje

      t.timestamps
    end
  end
end
