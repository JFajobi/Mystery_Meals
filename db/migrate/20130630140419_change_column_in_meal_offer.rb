class ChangeColumnInMealOffer < ActiveRecord::Migration
  def up
    change_column :meal_offer_searches, :user_id, :integer, :null => false
    change_column :users, :first_name, :string, :null => false
    change_column :users, :last_name, :string, :null => false
  end

  def down
    change_column :meal_offer_searches, :user_id, :integer
    change_column :users, :first_name, :string
    change_column :users, :last_name, :string
  end
end
