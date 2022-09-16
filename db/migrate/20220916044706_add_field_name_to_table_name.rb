class AddFieldNameToTableName < ActiveRecord::Migration[5.2]
  def change
    add_column :details, :file, :string
  end
end
