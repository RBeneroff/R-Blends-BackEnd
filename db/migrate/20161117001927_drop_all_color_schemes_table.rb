class DropAllColorSchemesTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :all_color_schemes
  end
end
