class CreatePagoCompras < ActiveRecord::Migration
  def change
    create_table :pago_compras do |t|
      t.integer :pag_cuota
      t.date :pag_fecha
      t.date :pag_venc
      t.integer :pag_estado
      t.integer :pag_monto

      t.timestamps
    end
  end
end
