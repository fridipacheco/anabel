class AddComunaIdToLocal < ActiveRecord::Migration
  def change
    add_column :locals, :comuna_id, :integer
  end
end
