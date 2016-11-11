class CreateAllColorSchemes < ActiveRecord::Migration[5.0]
  def change
    create_table :all_color_schemes do |t|
      t.string :color_scheme_name
      t.string :color_one
      t.string :color_two
      t.string :color_three
      t.string :color_four
      t.string :color_five

      t.timestamps
    end
  end
end
