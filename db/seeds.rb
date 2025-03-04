# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



Van.create(fuel: 'electric', model: 'VW California Ocean', price: 170, surface: '15', user_id: 1)
puts 'created a van'

Van.create(fuel: 'diesel', model: 'Renault Partner', price: 120, surface: '15', user_id: 1)
puts 'created a van'

Van.create(fuel: 'hybrid', model: 'Ford Transit', price: 150, surface: '15', user_id: 1)
puts 'created a van'

Booking.destroy_all
puts 'destroyed all bookings'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 8)
puts 'created a booking'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 8)
puts 'created a booking'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 8)
puts 'created a booking'

puts 'Youhooou'
