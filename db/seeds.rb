# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# restaurant seed data 
# neighborhood, name, price_anchor, address, description, cuisine


restaurants = [['Jamaica Plain', 'Ten Tables', 30, '597 Centre St
Jamaica Plain, MA 02130','Good friends, nice location, better food', 'Fine Dining' ],
['Jamaica Plain', 'Tres Gatos', 20, '470 Centre St
Boston, MA 02130','Yummy Yummy Goodness','American'],
['Jamaica Plain', 'El Oriental De Cuba', 10, '416 Centre St
Jamaica Plain, MA 02130', 'Cubantastic food with some Caribbean flair',
'American'],['Jamaica Plain', 'JP Seafood Cafe', 10, '730 Ctr St
Jamaica Plain, MA 02130', 'Japanese, Korean, and all the seafood you can imagine','Seafood' ],
['Jamaica Plain', '', 10, '711 Centre St
Boston, MA 02130','We make the best Pizza... JK we make Indian cuisine', 'Fine Dining'],
['Jamaica Plain', 'Galway House', 20, '710 Centre St
Jamaica Plain, MA 02130', "Don't head that-a-way, head to Galway",'Seafood'],
['Jamaica Plain', 'Blue Nile Restaurant', 20, '389 Centre St
Boston, MA 02130', "Check us out... OR ELSE!",'Seafood']['Jamaica Plain', 'Canto 6', 20, 'Great lu']]

restaurants.each  do |restaurant|
  Restaurant.find_or_create_by_neighborhood_and_name_and_price_anchor_and_address_and_description_and_cuisine(:neighborhood => restaurant[0], :name => restaurant[1], :price_anchor => restaurant[2], :address => restaurant[3], :description => restaurant[4], :cuisine => restaurant[5])
end


# User/Admin seed data
# email, first_name, last_name, admin
