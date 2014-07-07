class AddCompraIdToDespacho < ActiveRecord::Migration
  def change
    add_column :despachos, :compra_id, :integer
  end
end
