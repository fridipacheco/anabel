class CreateTipoPagos < ActiveRecord::Migration
  def change
    create_table :tipo_pagos do |t|
      t.string :tpp_descripcion

      t.timestamps
    end
  end
end
