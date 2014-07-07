class AddTipoCompraIdToCompra < ActiveRecord::Migration
  def change
    add_column :compras, :tipo_compra_id, :integer
  end
end
