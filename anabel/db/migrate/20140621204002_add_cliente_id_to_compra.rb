class AddClienteIdToCompra < ActiveRecord::Migration
  def change
    add_column :compras, :cliente_id, :integer
  end
end
