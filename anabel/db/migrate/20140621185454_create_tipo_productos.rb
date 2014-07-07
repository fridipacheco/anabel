class CreateTipoProductos < ActiveRecord::Migration
  def change
    create_table :tipo_productos do |t|
      t.string :tip_descripcion

      t.timestamps
    end
  end
end
