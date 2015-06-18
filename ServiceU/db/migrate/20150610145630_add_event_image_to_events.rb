class AddEventImageToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_image_id, :string
  end
end
