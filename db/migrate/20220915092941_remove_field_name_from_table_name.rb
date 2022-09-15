class RemoveFieldNameFromTableName < ActiveRecord::Migration[5.2]
  def change
    remove_column :details,:degree,:string
  end
end
