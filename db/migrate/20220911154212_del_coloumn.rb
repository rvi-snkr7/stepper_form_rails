class DelColoumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :details,:father,:string
    remove_column :details,:mother,:string
    remove_column :details,:spouse,:string
    remove_column :details,:email,:string
    remove_column :details,:category,:string
    remove_column :details,:caste,:string
    remove_column :details,:dob,:numeric
  end
end
