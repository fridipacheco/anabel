class AddTipoProductoIdToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :tipo_producto_id, :integer
  end
end
