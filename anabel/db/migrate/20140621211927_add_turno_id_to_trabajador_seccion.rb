class AddTurnoIdToTrabajadorSeccion < ActiveRecord::Migration
  def change
    add_column :trabajador_seccions, :turno_id, :integer
  end
end
