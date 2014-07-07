class CreateComunas < ActiveRecord::Migration
  def change
    create_table :comunas do |t|
      t.string :com_nombre

      t.timestamps
    end
  end
end
