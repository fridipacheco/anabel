class AddEstadoIdToBodegaPedido < ActiveRecord::Migration
  def change
    add_column :bodega_pedidos, :estado_id, :integer
  end
end
