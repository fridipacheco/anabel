class CreateEstadoDespachos < ActiveRecord::Migration
  def change
    create_table :estado_despachos do |t|
      t.string :ede_descripcion

      t.timestamps
    end
  end
end
