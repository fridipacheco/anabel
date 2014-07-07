class AddEstadoIdToLocalPedido < ActiveRecord::Migration
  def change
    add_column :local_pedidos, :estado_id, :integer
  end
end
