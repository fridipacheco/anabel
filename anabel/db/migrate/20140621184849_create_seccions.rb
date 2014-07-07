class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.string :sec_seccion
      t.string :sec_descripcion

      t.timestamps
    end
  end
end
