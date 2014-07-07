class AddModeloIdToVehiculo < ActiveRecord::Migration
  def change
    add_column :vehiculos, :modelo_id, :integer
  end
end
