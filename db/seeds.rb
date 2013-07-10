# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# restaurant seed data 
# neighborhood, name, price_anchor, address, cuisine


restaurants = [['Jamaica Plain', 'Ten Tables', 10, '597 Centre St
Jamaica Plain, MA 02130', 'Fine Dining' ],
['Jamaica Plain', 'Tres Gatos', 20, '470 Centre St
Boston, MA 02130','American'],
['Jamaica Plain', 'El Oriental De Cuba', 10, '416 Centre St
Jamaica Plain, MA 02130','American'],['Jamaica Plain', 'JP Seafood Cafe', 10, '730 Ctr St
Jamaica Plain, MA 02130','Seafood' ],
['Jamaica Plain', '', 10, '711 Centre St
Boston, MA 02130', 'Fine Dining'],
['Jamaica Plain', 'Galway House', 20, '710 Centre St
Jamaica Plain, MA 02130','Seafood'],
['Jamaica Plain', 'Blue Nile Restaurant', 20, '389 Centre St
Boston, MA 02130','Seafood'],['Jamaica Plain', 'Canto 6', 20, '3346 Washington St
Jamaica Plain, MA 02130', 'American' ],['Jamaica Plain', 'Robinwood Cafe', 10, '536 Centre St
Jamaica Plain, MA 02130' 'Seafood'],['Jamaica Plain', 'Acapulco Restaurant', 10, '464 Centre St
Jamaica Plain, MA 02130', 'Fine Dining'], ['Jamaica Plain', 'Super Fusion', 10,'779 Centre St
Boston, MA 02130', 'Seafood'],['Jamaica Plain', "Zesto's Pizza and Grille", 20, '460 Centre St
Jamaica Plain, MA 02130', 'American'],['Jamaica Plain', 'Forest Hills Pizza', 20, '3722 Washington St
Jamaica Plain, MA 02130', 'American'], ['Jamaica Plain', 'Forest Hills Diner', 20, '3696 Washington St
Jamaica Plain, MA 02130', 'Fine Dining'],['Jamaica Plain', 'Tonic', 20, '3698 Washington St
Boston, MA 02130', 'Fine Dining'],['Jamaica Plain', 'Latino Restaurant', 20,'302 Centre St
Jamaica Plain, MA 02130', 'Seafood'],['Jamaica Plain', 'El Embajador', 20,'3371 Washington St
Jamaica Plain, MA 02130', 'Seafood'],['Jamaica Plain', 'Primo Restaurant', 20,'28 Myrtle St
Boston, MA 02114', 'Fine Dining'],['Jamaica Plain', 'The Real Deal', 20,'736 Centre St
Jamaica Plain, MA 02130', 'American'],['Cambridge','The Helmand', 10, '143 1st St
Cambridge, MA 02142','Fine Dining'],['Cambridge', 'Eastside Bar & Grille', 10, '561 Cambridge St
Cambridge, MA 02141', 'Fine Dining'],['Cambridge', 'Court House Seafood', 10, '498 Cambridge St
Cambridge, MA 02141','Seafood'],['Cambridge','The Similans',10,'145 1st St
Cambridge, MA 02142','Seafood'],["Cambridge",'2nd Street Cafe',10,'89 2nd St
Cambridge, MA 02141', 'Seafood'],['Cambridge','Aceituna Cafe',10,'605 W Kendall St
Cambridge, MA 02142','Seafood'],['Cambridge','Dante',10,'40 Edwin H Land Blvd
Cambridge, MA 02142','American'],['Cambridge','EVOO',10,'350 3rd St In Kendall Sq
Cambridge, MA 02142','American'],['Cambridge','RJ Gourmet',10,'320 3rd St In Kendall Sq
Cambridge, MA 02142','American'],['Cambridge','Fuji At Kendall',10,'20 Edwin H Land Blvd
Cambridge, MA 02142','American'],['Cambridge','Desfina Restaurant',10,'20 Edwin H Land Blvd
Cambridge, MA 02142','American'],['Cambridge','Courtside', 20, '13 1st St
Cambridge, MA 02142','Fine Dining'],['Cambridge',"Abigail's Restaurant", 20, '20 1st St
Cambridge, MA 02142','Fine Dining'],['Cambridge','Curry Thai', 20, '143 1st St
Cambridge, MA 02142','Fine Dining'],['Cambridge','Za', 20, '350 1st St
Cambridge, MA 02142','Fine Dining'],['Cambridge','Firebrand Saints', 20, '43 3rd St
Cambridge, MA 02142','American'],['Cambridge','Bambara Restaurant', 20, '25 Land Blvd
Cambridge, MA 02142','American'],['Cambridge','The Squeaky Beaker', 20, '143 1st St
Cambridge, MA 02142','American'],['Cambridge','Arams No 2 Pizza & Subs', 20, '345 Cambridge St
Cambridge, MA 02142','American'],['Cambridge','Art Bar', 20, '40 Edwin St
Cambridge, MA 02142','Seafood'],['Cambridge','Olive Cafe', 20, '43 Gore St
Cambridge, MA 02142','Seafood'],['Cambridge','Kika Tapas', 20, '350 1st St
Cambridge, MA 02142','Seafood'],['Cambridge','Boca Grande', 20, '143 1st St
Cambridge, MA 02142','Seafood']]

restaurants.each  do |restaurant|
  Restaurant.find_or_create_by_neighborhood_and_name_and_price_anchor_and_address_and_cuisine(:neighborhood => restaurant[0], :name => restaurant[1], :price_anchor => restaurant[2], :address => restaurant[3], :cuisine => restaurant[4])
end


seafood = Restaurant.where(cuisine:'Seafood')
american = Restaurant.where(cuisine:'American')
fine_dining = Restaurant.where(cuisine:'Fine Dining')

seafood_names = ['Fish Sticks..','Shrimp Creole','Shrimp Gumbo','Pan Fried Shrimp','Stir Fried Shrimp','Shrimp Stew',
				'Fish Tacos','Grilled Fish Steaks','Baked Salmon Surprise','Coconut Shrimp','Rockin Oysters',
				'Baked Cod','Fried Tuna Mash','Catfish Po Boy','Seafood Marinara Pasta','Clam Chowda','Moroccan Salmon Cakes',
				'Lobster Pizza!','pork chops... jk Sauteed Shrimp','Crab Cakes','Tuna Casserold','Honey Ginger Salmon mmmm...',
				'Maple Glazed Salmon','JAMBALAYA!!','Canned Tuna.. Sorry',"Filet A Fish Sandwich",'Fish and Chips','LOBSTER TAILS',
				'Spicy Crab Soup','Turtle Soup','Grilled Glazed Salmon','Bacon Stuffed Crab','Grilled Trout','Sushi','Filet o fish',
				'Salmon Confee','2 day old Sushi']

american_names =	['Hot Dog','Chilli Dog','Cheese Burger','Glazed Doughnut','Doughnut Buger','Chicken Fingers','Cinnabon','Chicken Nuggets & Fries','MYSTERY MEAL',
					'Chocolate Pudding','Buffalo Chicken Sandwich','Cheeststeak','Steak & Cheese','Cheese & Steak','Block of Cheddar Chese','Bacon Cheese Burger',
					'Bacon Mac & Cheese','Meat Loaf','One Pound Cheese Burger','Turkey Sandwhich','BLT']

fine_dining_names =	['Fried Do Do Bird','filet mignon lobster tails',"filet mignon",'Ribey Steak','The Background Image','Full rack of ribs','Chicken Fried Steak',
					'Large Pepperoni Pizza', 'Chicken Fingers', 'Bowl of Mash Potatoe with Diamond Flakes','Chicken Stuffed Steak Stuffed Ribs','Gumbo Shrimp','Fried Chicken',
					'Gold Plated Ribs'	]

seafood.each do |object|
	2.times do 
		MenuItem.find_or_create_by_dish_and_restaurant_id(dish: seafood_names.sample, restaurant_id:object.id)
	end
end

american.each do |object|
	2.times do 
		MenuItem.find_or_create_by_dish_and_restaurant_id(dish: american_names.sample, restaurant_id:object.id)
	end
end

fine_dining.each do |object|
	2.times do 
		MenuItem.find_or_create_by_dish_and_restaurant_id(dish: fine_dining_names.sample, restaurant_id:object.id)
	end
end





