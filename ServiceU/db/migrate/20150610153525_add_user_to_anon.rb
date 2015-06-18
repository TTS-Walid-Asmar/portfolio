class AddUserToAnon < ActiveRecord::Migration
  def change
    add_column :anons, :user_id, :integer
  end
end
