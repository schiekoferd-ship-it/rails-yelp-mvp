# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning DB"
Restaurant.destroy_all
puts "Seeding started..."
restaurant1 = Restaurant.create!(name: "Pizza", address: "Mitte", category: "italian")
puts "Created 1st restaurant named #{restaurant1.id} #{restaurant1.name}"
restaurant2 = Restaurant.create!(name: "Burger", address: "Fhain", category: "belgian")
puts "Created 2nd restaurant named #{restaurant2.id} #{restaurant2.name}"
restaurant3 = Restaurant.create!(name: "Pasta", address: "Lberg", category: "italian")
puts "Created 3rd restaurant named #{restaurant3.id} #{restaurant3.name}"
restaurant4 = Restaurant.create!(name: "Ramen", address: "Xberg", category: "japanese")
puts "Created 4th restaurant named #{restaurant4.id} #{restaurant4.name}"
restaurant5 = Restaurant.create!(name: "Sushi", address: "Pberg", category: "chinese")
puts "Created 5th restaurant named #{restaurant5.id} #{restaurant5.name}"
puts "#{Restaurant.count} restaurants created!"
