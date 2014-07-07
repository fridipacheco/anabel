class CreateTipoTurnos < ActiveRecord::Migration
  def change
    create_table :tipo_turnos do |t|
      t.string :ttu_descripcio

      t.timestamps
    end
  end
end
