class CreateMobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :mobiles do |t|
      t.string :number
      t.references :detail

      t.timestamps
    end
  end
end
