class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :tur_horario

      t.timestamps
    end
  end
end
