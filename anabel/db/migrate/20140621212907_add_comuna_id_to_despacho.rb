class AddComunaIdToDespacho < ActiveRecord::Migration
  def change
    add_column :despachos, :comuna_id, :integer
  end
end
