class RemoveTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :prominents
  end
end
