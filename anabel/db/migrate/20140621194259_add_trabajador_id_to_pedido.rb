class AddTrabajadorIdToPedido < ActiveRecord::Migration
  def change
    add_column :pedidos, :trabajador_id, :integer
  end
end
