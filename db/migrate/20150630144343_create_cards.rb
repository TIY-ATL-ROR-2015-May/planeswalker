class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :edition_id
      t.string :name
      t.string :rarity
      t.string :artist
      t.string :text
      t.string :flavor
      t.integer :power
      t.integer :toughness
      t.string :mana_cost
      t.integer :converted

      t.timestamps null: false
    end
  end
end
