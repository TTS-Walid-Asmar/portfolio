class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :title
      t.text :description
      t.string :condition
      t.integer :price
      t.string :isbn
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
