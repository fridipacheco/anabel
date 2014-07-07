class AddSeccionIdToSeccionLocal < ActiveRecord::Migration
  def change
    add_column :seccion_locals, :seccion_id, :integer
  end
end
