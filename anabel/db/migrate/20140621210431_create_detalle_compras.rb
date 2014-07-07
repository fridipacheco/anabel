class CreateDetalleCompras < ActiveRecord::Migration
  def change
    create_table :detalle_compras do |t|
      t.integer :dec_cantidad
      t.integer :dec_uni
      t.integer :dec_total
      t.integer :dec_descuento

      t.timestamps
    end
  end
end
