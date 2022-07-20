# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
o_stavros = { name: 'O Stavros', address: 'Eratosthenous 12', category: 'Japanese' }
musique_cafe =  { name: 'Musique Cafe', address: 'Plateia Proskopon 12', category: 'french' }
black_sheep = { name: 'Black Sheep', address: 'Arktinou 12', category: 'chinese' }
ok_bread = { name: 'Ok Bread', address: 'Aminta 8', category: 'Belgian' }
aleksandrino = { name: 'Aleksandrino', address: 'Imitou 12', category: 'italian' }

[o_stavros, musique_cafe, black_sheep, ok_bread, aleksandrino].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
