class AddBodegaIdToProductoBodega < ActiveRecord::Migration
  def change
    add_column :producto_bodegas, :bodega_id, :integer
  end
end
