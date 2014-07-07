class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.string :veh_patente
      t.string :veh_capacidad

      t.timestamps
    end
  end
end
