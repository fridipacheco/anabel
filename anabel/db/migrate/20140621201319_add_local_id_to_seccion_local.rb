class AddLocalIdToSeccionLocal < ActiveRecord::Migration
  def change
    add_column :seccion_locals, :local_id, :integer
  end
end
