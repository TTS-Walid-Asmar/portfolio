class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :cost
      t.text :where
      t.datetime :start
      t.datetime :end
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
