class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :com_cant
      t.integer :com_total
      t.integer :com_cuota

      t.timestamps
    end
  end
end
