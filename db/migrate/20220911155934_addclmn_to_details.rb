class AddclmnToDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :details,:mother,:string
    add_column :details,:spouse,:string
    add_column :details,:email,:string
    add_column :details,:dob,:date
    add_column :details,:gender,:string
    add_column :details,:category,:string
    add_column :details,:degree,:string
  end
end
