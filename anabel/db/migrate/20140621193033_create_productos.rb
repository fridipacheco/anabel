class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :pro_nombre
      t.string :pro_descripcion

      t.timestamps
    end
  end
end
