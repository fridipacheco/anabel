class AddSeccionLocalIdToTrabajadorSeccion < ActiveRecord::Migration
  def change
    add_column :trabajador_seccions, :seccion_local_id, :integer
  end
end
