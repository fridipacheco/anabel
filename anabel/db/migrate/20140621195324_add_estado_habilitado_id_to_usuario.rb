class AddEstadoHabilitadoIdToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :estado_habilitado_id, :integer
  end
end
