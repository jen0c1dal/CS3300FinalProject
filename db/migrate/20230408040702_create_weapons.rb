class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.text :description
      t.string :dmg_type
      t.string :dmg_dice
      t.string :string
      t.integer :p_level

      t.timestamps
    end
  end
end
