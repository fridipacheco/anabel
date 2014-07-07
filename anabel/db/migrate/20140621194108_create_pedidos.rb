class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :ped_fecha
      t.integer :ped_total
      t.integer :ped_canttot

      t.timestamps
    end
  end
end
