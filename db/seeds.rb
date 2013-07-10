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
Jamaica Plain, MA 02130', 'American']]

restaurants.each  do |restaurant|
  Restaurant.find_or_create_by_neighborhood_and_name_and_price_anchor_and_address_and_cuisine(:neighborhood => restaurant[0], :name => restaurant[1], :price_anchor => restaurant[2], :address => restaurant[3], :cuisine => restaurant[4])
end


# User/Admin seed data
# email, first_name, last_name, admin
