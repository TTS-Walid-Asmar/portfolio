class AddCategoryToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :category_id, :integer
  end
end
