class AddItemImageToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :item_image_id, :string
  end
end
