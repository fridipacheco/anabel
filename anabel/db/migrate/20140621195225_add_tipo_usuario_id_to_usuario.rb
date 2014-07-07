class AddTipoUsuarioIdToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :tipo_usuario_id, :integer
  end
end
