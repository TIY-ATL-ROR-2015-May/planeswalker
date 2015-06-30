class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.string :name
      t.string :shortcode
      t.string :infocode
      t.date :released_on
      t.string :edition_type

      t.timestamps null: false
    end
  end
end
