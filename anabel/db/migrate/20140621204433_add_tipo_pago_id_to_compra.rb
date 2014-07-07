class AddTipoPagoIdToCompra < ActiveRecord::Migration
  def change
    add_column :compras, :tipo_pago_id, :integer
  end
end
