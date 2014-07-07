class AddPedidoIdToLocalPedido < ActiveRecord::Migration
  def change
    add_column :local_pedidos, :pedido_id, :integer
  end
end
