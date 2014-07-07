class AddCompraIdToAsistenciaCompra < ActiveRecord::Migration
  def change
    add_column :asistencia_compras, :compra_id, :integer
  end
end
