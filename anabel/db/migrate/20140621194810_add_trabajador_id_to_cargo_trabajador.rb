class AddTrabajadorIdToCargoTrabajador < ActiveRecord::Migration
  def change
    add_column :cargo_trabajadors, :trabajador_id, :integer
  end
end
