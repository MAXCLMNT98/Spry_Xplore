# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Booking.destroy_all
puts 'destroyed all bookings'

# Van.destroy_all
# puts 'destroyed all vans'

Van.create(
  fuel: 'Electrique',
  model: 'VW California Ocean',
  price: 170,
  surface: '15',
  user_id: 1,
  image_url: "https://res.cloudinary.com/dhyuv86iu/image/upload/v1741188280/alpert-wang-rxQL0ieF_Bs-unsplash_spzh1t.jpg",
  address: "16 Villa Gaudelet, Paris"
)
puts 'created a van'
Van.create(
  fuel: 'Diesel',
  model: 'Renault Partner',
  price: 120,
  surface: '15',
  user_id: 1,
  image_url: "https://res.cloudinary.com/dhyuv86iu/image/upload/v1741188278/collins-lesulie-hMwtHGvDh2k-unsplash_bnnvxm.jpg",
  address: "Morgiou, 13009 Marseille"
)
puts 'created a van'
Van.create(
  fuel: 'Hybride',
  model: 'Ford Transit',
  price: 150,
  surface: '16',
  user_id: 1,
  image_url: "https://res.cloudinary.com/dhyuv86iu/image/upload/v1741188277/kevin-schmid--grs8iMGqQE-unsplash_aoxir3.jpg",
  address: "Les Canavals, 46240 Cœur-de-Causse"
)

puts 'created a van'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 40, status: 'En attente')
puts 'created a booking'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 41, status: 'Acceptée')
puts 'created a booking'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 42, status: 'Refusée')
puts 'created a booking'

puts 'Youhooou'
