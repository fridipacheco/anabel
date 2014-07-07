class AddSeccionLocalIdToProductoSeccion < ActiveRecord::Migration
  def change
    add_column :producto_seccions, :seccion_local_id, :integer
  end
end
