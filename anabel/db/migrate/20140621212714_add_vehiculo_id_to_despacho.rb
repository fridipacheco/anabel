class AddVehiculoIdToDespacho < ActiveRecord::Migration
  def change
    add_column :despachos, :vehiculo_id, :integer
  end
end
