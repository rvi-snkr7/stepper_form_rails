class AddColumnFromtable < ActiveRecord::Migration[5.2]
  def change
    add_column :prominents ,:mobile, :bigint
  end
end
