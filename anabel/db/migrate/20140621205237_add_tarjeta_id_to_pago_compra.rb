class AddTarjetaIdToPagoCompra < ActiveRecord::Migration
  def change
    add_column :pago_compras, :tarjet_id, :integer
  end
end
