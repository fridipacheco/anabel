class CreateTarjets < ActiveRecord::Migration
  def change
    create_table :tarjets do |t|
      t.integer :tar_serie
      t.integer :tar_verificador
      t.date :tar_expira
      t.integer :tar_estado
      t.date :tar_cobro

      t.timestamps
    end
  end
end
