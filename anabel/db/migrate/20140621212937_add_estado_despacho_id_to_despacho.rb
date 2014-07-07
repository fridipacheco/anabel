class AddEstadoDespachoIdToDespacho < ActiveRecord::Migration
  def change
    add_column :despachos, :estado_despacho_id, :integer
  end
end
