class CreateGovservs < ActiveRecord::Migration
  def change
    create_table :govservs do |t|
      t.text :service

      t.timestamps null: false
    end
  end
end
