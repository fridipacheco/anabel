class AddTipoTrabajadorIdToCargoTrabajador < ActiveRecord::Migration
  def change
    add_column :cargo_trabajadors, :tipo_trabajador_id, :integer
  end
end
