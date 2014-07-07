class CreateBodegaPedidos < ActiveRecord::Migration
  def change
    create_table :bodega_pedidos do |t|

      t.timestamps
    end
  end
end
