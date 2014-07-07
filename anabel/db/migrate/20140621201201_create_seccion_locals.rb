class CreateSeccionLocals < ActiveRecord::Migration
  def change
    create_table :seccion_locals do |t|

      t.timestamps
    end
  end
end
