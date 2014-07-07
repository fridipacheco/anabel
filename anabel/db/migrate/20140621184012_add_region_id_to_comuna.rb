class AddRegionIdToComuna < ActiveRecord::Migration
  def change
    add_column :comunas, :region_id, :integer
  end
end
