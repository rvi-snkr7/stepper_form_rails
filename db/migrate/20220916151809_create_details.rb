class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string :name
      t.string :religion
      t.integer :mobile, array: true, default: []
      t.timestamps
    end
    add_index :details, :mobile, using: 'gin'
  end
end
