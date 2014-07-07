class CreateTipoTrabajadors < ActiveRecord::Migration
  def change
    create_table :tipo_trabajadors do |t|
      t.string :tpt_descripcion

      t.timestamps
    end
  end
end
