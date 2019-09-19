class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :method
      t.integer :coffee
      t.integer :water
      t.integer :watertemp
      t.string :grindsize
      t.string :time
      t.text :instructions
      t.string :image

      t.timestamps
    end
  end
end
