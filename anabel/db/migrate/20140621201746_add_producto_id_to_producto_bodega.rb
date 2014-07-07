class AddProductoIdToProductoBodega < ActiveRecord::Migration
  def change
    add_column :producto_bodegas, :producto_id, :integer
  end
end
