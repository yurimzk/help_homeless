class AddEventImgToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :event_img, :string
  end
end
