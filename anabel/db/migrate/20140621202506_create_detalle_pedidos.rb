class CreateDetallePedidos < ActiveRecord::Migration
  def change
    create_table :detalle_pedidos do |t|
      t.integer :dep_cant
      t.integer :dep_precio

      t.timestamps
    end
  end
end
