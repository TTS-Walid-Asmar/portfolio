class CreateExamps < ActiveRecord::Migration
  def change
    create_table :examps do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
