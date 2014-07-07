class CreateTipoCompras < ActiveRecord::Migration
  def change
    create_table :tipo_compras do |t|
      t.string :tco_descripcion

      t.timestamps
    end
  end
end
