class AddTrabajadorIdToDespacho < ActiveRecord::Migration
  def change
    add_column :despachos, :trabajador_id, :integer
  end
end
