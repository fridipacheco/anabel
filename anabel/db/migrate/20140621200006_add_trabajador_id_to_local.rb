class AddTrabajadorIdToLocal < ActiveRecord::Migration
  def change
    add_column :locals, :trabajador_id, :integer
  end
end
