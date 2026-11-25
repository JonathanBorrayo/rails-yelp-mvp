# db/seeds.rb
puts "Limpiando la base de datos..."
Review.destroy_all
Restaurant.destroy_all

puts "Creando restaurantes..."
restaurants = [
  { name: "Dragon Palace", address: "12 Nathan Road, Hong Kong", phone_number: "+852 1234 5678", category: "chinese" },
  { name: "La Trattoria", address: "Via Roma 45, Milan", phone_number: "+39 02 1234 5678", category: "italian" },
  { name: "Sakura Sushi", address: "3-2-1 Shibuya, Tokyo", phone_number: "+81 3 1234 5678", category: "japanese" },
  { name: "Épicure", address: "75008 Paris", phone_number: "+33 1 42 65 00 00", category: "french" },
  { name: "Chez Léon", address: "Rue des Bouchers 18, Brussels", phone_number: "+32 2 511 1415", category: "belgian" }
]

restaurants.each do |attributes|
  Restaurant.create!(attributes)
end

puts "Se crearon #{Restaurant.count} restaurantes."
