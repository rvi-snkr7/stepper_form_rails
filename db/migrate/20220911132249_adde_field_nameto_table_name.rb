class AddeFieldNametoTableName < ActiveRecord::Migration[5.2]
  def change
    add_column :prominents ,:numbers,:string
  end
end
