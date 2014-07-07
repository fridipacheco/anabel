class CreateTipoTarjets < ActiveRecord::Migration
  def change
    create_table :tipo_tarjets do |t|
      t.string :tta_descripcion

      t.timestamps
    end
  end
end
