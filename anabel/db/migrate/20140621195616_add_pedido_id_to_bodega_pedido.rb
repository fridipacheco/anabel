class AddPedidoIdToBodegaPedido < ActiveRecord::Migration
  def change
    add_column :bodega_pedidos, :pedido_id, :integer
  end
end
