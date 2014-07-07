class CreateProductoBodegas < ActiveRecord::Migration
  def change
    create_table :producto_bodegas do |t|
      t.integer :prb_cant
      t.date :prb_fecha
      t.integer :prb_preciouni

      t.timestamps
    end
  end
end
