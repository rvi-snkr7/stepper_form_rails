class AddcoloumnsTodetails < ActiveRecord::Migration[5.2]
  def change
    add_column :details,:father,:string,before: :created_at
  end
end
