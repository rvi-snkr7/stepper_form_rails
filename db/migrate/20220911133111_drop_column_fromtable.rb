class DropColumnFromtable < ActiveRecord::Migration[5.2]
  def up
    remove_column :prominents, :numbers, :string
  end
  def down
    add_column :prominets ,:mobile, :bigint
  end
  end

