class AddProductoBodegaIdToDetallePedido < ActiveRecord::Migration
  def change
    add_column :detalle_pedidos, :producto_bodega_id, :integer
  end
end
