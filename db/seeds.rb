# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bristol = { name: 'Bristol', address: '2346 Santa Monica Road CA', category: 'french' }

la_bonne_frite = { name: 'La Bonne Frite', address: '1 Quai des Belges', category: 'belgian' }

hard_rock_cafe = { name: 'Hard Rock Café', address: '45 Avenue des Champs Elysées', category: 'french' }

au_petit_grain_de_riz = { name: 'Au Petit Grain de Riz', address: '33 Boulevard Voltaire', category: 'chinese' }

allo_sushi = { name: 'Allô Sushi', address: '24 rue Paradis', category: 'japanese' }

[allo_sushi, au_petit_grain_de_riz, hard_rock_cafe, la_bonne_frite, bristol].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
