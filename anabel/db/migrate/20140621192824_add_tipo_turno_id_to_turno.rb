class AddTipoTurnoIdToTurno < ActiveRecord::Migration
  def change
    add_column :turnos, :tipo_turno_id, :integer
  end
end
