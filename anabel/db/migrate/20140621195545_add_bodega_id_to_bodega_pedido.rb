class AddBodegaIdToBodegaPedido < ActiveRecord::Migration
  def change
    add_column :bodega_pedidos, :bodega_id, :integer
  end
end
