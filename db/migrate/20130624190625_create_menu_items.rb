class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :dish, :null => false
      t.text :description, :null => false
      t.string :cuisine, :null => false
      t.string :menu_item_image
      t.string :remote_menu_item_image_url

      t.timestamps
    end
  end
end
