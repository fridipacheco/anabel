class CreateLocalPedidos < ActiveRecord::Migration
  def change
    create_table :local_pedidos do |t|

      t.timestamps
    end
  end
end
