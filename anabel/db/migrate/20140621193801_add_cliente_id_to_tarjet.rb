class AddClienteIdToTarjet < ActiveRecord::Migration
  def change
    add_column :tarjets, :cliente_id, :integer
  end
end
