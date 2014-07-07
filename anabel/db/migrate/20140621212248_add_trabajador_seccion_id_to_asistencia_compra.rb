class AddTrabajadorSeccionIdToAsistenciaCompra < ActiveRecord::Migration
  def change
    add_column :asistencia_compras, :trabajador_seccion_id, :integer
  end
end
