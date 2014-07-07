class AddProductoSeccionIdToDetalleCompra < ActiveRecord::Migration
  def change
    add_column :detalle_compras, :producto_seccion_id, :integer
  end
end
