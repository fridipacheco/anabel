class AddEstadoHabilitadoIdToCargoTrabajador < ActiveRecord::Migration
  def change
    add_column :cargo_trabajadors, :estado_habilitado_id, :integer
  end
end
