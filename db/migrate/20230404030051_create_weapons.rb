class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :description
      t.string :dmg_type
      t.integer :dmg_dice
      t.integer :power_level

      t.timestamps
    end
  end
end
