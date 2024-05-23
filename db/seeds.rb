# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", rating: 5 }
pizza_east =  { name: "pizza_east", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", rating: 4 }
pizza_west =  { name: "pizza_west", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", rating: 4 }
pizza_north =  { name: "pizza_north", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian", rating: 4 }
pizza_south =  { name: "pizza_south", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese", rating: 4 }

[dishoom, pizza_east, pizza_west, pizza_north, pizza_south].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
