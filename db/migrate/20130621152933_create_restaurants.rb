class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :address, :null => false
      t.string :image
      t.text :description, :null => false
      t.text :neighborhood, :null => false

      t.timestamps
    end
  end
end
