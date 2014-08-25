class AddPositionToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :position, :integer
  end
end
