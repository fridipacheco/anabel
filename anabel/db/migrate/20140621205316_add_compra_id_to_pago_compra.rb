class AddCompraIdToPagoCompra < ActiveRecord::Migration
  def change
    add_column :pago_compras, :compra_id, :integer
  end
end
