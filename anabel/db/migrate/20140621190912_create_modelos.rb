class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.string :mod_descripcion

      t.timestamps
    end
  end
end
