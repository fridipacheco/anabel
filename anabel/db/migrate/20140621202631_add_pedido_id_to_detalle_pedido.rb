class AddPedidoIdToDetallePedido < ActiveRecord::Migration
  def change
    add_column :detalle_pedidos, :pedido_id, :integer
  end
end
