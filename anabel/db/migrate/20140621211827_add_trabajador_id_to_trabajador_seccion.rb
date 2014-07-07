class AddTrabajadorIdToTrabajadorSeccion < ActiveRecord::Migration
  def change
    add_column :trabajador_seccions, :trabajador_id, :integer
  end
end
