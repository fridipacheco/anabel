class AddProveedorIdToPedido < ActiveRecord::Migration
  def change
    add_column :pedidos, :proveedor_id, :integer
  end
end
