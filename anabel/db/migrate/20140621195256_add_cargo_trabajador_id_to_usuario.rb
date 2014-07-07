class AddCargoTrabajadorIdToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :cargo_trabajador_id, :integer
  end
end
