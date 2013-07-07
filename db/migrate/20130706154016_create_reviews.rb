class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment
      t.boolean :return, :null => false
      t.integer :meal_id, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
