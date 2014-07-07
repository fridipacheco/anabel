class CreateTrabajadorSeccions < ActiveRecord::Migration
  def change
    create_table :trabajador_seccions do |t|
      t.date :trs_fechaini
      t.date :trs_fechafin

      t.timestamps
    end
  end
end
