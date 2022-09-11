class AddTable < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string "name"
      t.bigint "mobile"
      t.string "child"
      t.string "religion"
      t.timestamps
    end
  end
end
