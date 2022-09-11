class RemoveFieldNameFromTableName < ActiveRecord::Migration[5.2]
  def change
    remove_column :prominents,:number, :strings,array:true, default: []
  end
end
