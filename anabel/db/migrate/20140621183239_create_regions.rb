class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :reg_nombre

      t.timestamps
    end
  end
end
