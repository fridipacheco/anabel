class AddTipoTarjetIdToTarjet < ActiveRecord::Migration
  def change
    add_column :tarjets, :tipo_tarjet_id, :integer
  end
end
