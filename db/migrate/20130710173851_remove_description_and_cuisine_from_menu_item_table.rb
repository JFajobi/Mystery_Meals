class RemoveDescriptionAndCuisineFromMenuItemTable < ActiveRecord::Migration
  def up
  	remove_column :menu_items, :description
  	remove_column :menu_items, :cuisine
  end

  def down
  	add_column :menu_items, :description, :text
  	add_column :menu_items, :cuisine, :string
  end
end
