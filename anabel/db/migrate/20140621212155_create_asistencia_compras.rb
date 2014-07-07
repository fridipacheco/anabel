class CreateAsistenciaCompras < ActiveRecord::Migration
  def change
    create_table :asistencia_compras do |t|
      t.date :asc_fecha
      t.integer :asc_comision

      t.timestamps
    end
  end
end
