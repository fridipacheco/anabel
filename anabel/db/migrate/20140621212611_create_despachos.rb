class CreateDespachos < ActiveRecord::Migration
  def change
    create_table :despachos do |t|
      t.date :desp_fecha

      t.timestamps
    end
  end
end
