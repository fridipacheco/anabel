class AddProductoBodegaIdToProductoSeccion < ActiveRecord::Migration
  def change
    add_column :producto_seccions, :producto_bodega_id, :integer
  end
end
