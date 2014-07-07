class CreateProductoSeccions < ActiveRecord::Migration
  def change
    create_table :producto_seccions do |t|
      t.integer :prs_cant
      t.date :prs_fecha
      t.integer :prs_preciouni

      t.timestamps
    end
  end
end
