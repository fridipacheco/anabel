class CreateEstadoHabilitados < ActiveRecord::Migration
  def change
    create_table :estado_habilitados do |t|
      t.string :esh_descripcion

      t.timestamps
    end
  end
end
