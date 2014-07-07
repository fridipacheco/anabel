class AddCompraIdToDetalleCompra < ActiveRecord::Migration
  def change
    add_column :detalle_compras, :compra_id, :integer
  end
end
