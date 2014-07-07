class AddLocalIdToLocalPedido < ActiveRecord::Migration
  def change
    add_column :local_pedidos, :local_id, :integer
  end
end
