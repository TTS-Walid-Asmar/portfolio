class CreateAnons < ActiveRecord::Migration
  def change
    create_table :anons do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
