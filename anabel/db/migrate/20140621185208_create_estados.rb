class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :est_descripcion

      t.timestamps
    end
  end
end
