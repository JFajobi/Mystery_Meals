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
Jamaica Plain, MA 02130','Good friends, nice location, better food', 'fine dining' ],
['Jamaica Plain', 'Tres Gatos', 20, '470 Centre St
Boston, MA 02130','Yummy Yummy Goodness','American'],
['Jamaica Plain', 'El Oriental De Cuba', 15, '416 Centre St
Jamaica Plain, MA 02130', 'Cubantastic food with some Caribbean flair',
'Cuban'],['Jamaica Plain', 'JP Seafood Cafe', 10, '730 Ctr St
Jamaica Plain, MA 02130', 'Japanese, Korean, and all the seafood you can imagine','Seafood' ],
['Jamaica Plain', 'Ghazal Indian Cuisine', 10, '711 Centre St
Boston, MA 02130','We make the best Pizza... JK we make Inidian cuisine', 'Indian'],
['Jamaica Plain', 'Galway House', 15, '710 Centre St
Jamaica Plain, MA 02130', "Don't head that-a-way, head to Galway",'Seafood']]

restaurants.each  do |restaurant|
  Restaurant.create(:neighborhood => restaurant[0], :name => restaurant[1], :price_anchor => restaurant[2], :address => restaurant[3], :description => restaurant[4], :cuisine => restaurant[5])
end


# User/Admin seed data
# email, first_name, last_name, admin
