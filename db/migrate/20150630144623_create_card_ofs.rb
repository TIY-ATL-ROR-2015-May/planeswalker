class CreateCardOfs < ActiveRecord::Migration
  def change
    create_table :card_ofs do |t|
      t.integer :card_id
      t.integer :card_type_id

      t.timestamps null: false
    end
  end
end
