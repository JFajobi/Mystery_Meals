class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :user_id, :null => false
      t.integer :restaurant_id, :null => false
      t.integer :menu_item_id, :null => false

      t.timestamps
    end
  end
end
