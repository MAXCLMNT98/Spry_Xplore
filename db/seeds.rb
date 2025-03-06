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

Van.destroy_all
puts 'destroyed all vans'
Van.create(fuel: 'Electrique', model: 'VolksWagen Combi T2', price: 170, surface: '15', user_id: 1, image_url: "https://res.cloudinary.com/dhyuv86iu/image/upload/v1741188280/alpert-wang-rxQL0ieF_Bs-unsplash_spzh1t.jpg", address: "16 Villa Gaudelet, Paris")
puts 'created a van'
Van.create(fuel: 'Essence', model: 'Mercedes HymerMobil 81', price: 75, surface: '15', user_id: 1, image_url: "https://res.cloudinary.com/dxmzqi2oa/image/upload/v1741260109/norbert-buduczki-GhtF4U5GkNI-unsplash_rjbuaa.jpg", address: "Morgiou, 13009 Marseille")
puts 'created a van'
Van.create(fuel: 'Essence', model: 'VolksWagen Combi T2', price: 150, surface: '15', user_id: 1, image_url: "https://res.cloudinary.com/dhyuv86iu/image/upload/v1741188277/kevin-schmid--grs8iMGqQE-unsplash_aoxir3.jpg", address: "Les Canavals, 46240 Cœur-de-Causse")
puts 'created a van'
Van.create(fuel: 'Diesel', model: 'VolksWagen T3 Westfalia', price: 90, surface: '9', user_id: 1, image_url: "https://res.cloudinary.com/dxmzqi2oa/image/upload/v1741259591/nick-dunlap-3xpalrYpiwo-unsplash_qwupca.jpg", address: "28 Av. des Goélands, 33120 Arcachon")
puts 'created a van'
Van.create(fuel: 'Diesel', model: 'VolksWagen Combi T2', price: 160, surface: '15', user_id: 1, image_url: "https://res.cloudinary.com/dhyuv86iu/image/upload/v1741188278/collins-lesulie-hMwtHGvDh2k-unsplash_bnnvxm.jpg", address: "8 Av. du Canigou, 66140 Canet-en-Roussillon")
puts 'created a van'
Van.create(fuel: 'Hybride', model: 'Ford Transit', price: 190, surface: '13', user_id: 1, image_url: "https://res.cloudinary.com/dxmzqi2oa/image/upload/v1741260840/download30-638652931618427406_j3vcrc.png", address: "129 Sent. de la Niederau, 68000 Colmar")
puts 'created a van'
Van.create(fuel: 'Essence', model: 'GMC', price: 80, surface: '11', user_id: 1, image_url: "https://res.cloudinary.com/dxmzqi2oa/image/upload/v1741262311/harold-eggar-DryqT-yYbN8-unsplash_l4angy.jpg", address: "3 rue de Stockholm, 14000 Caen")
puts 'created a van'
Van.create(fuel: 'Hydrogène', model: 'Volkswagen California', price: 190, surface: '13', user_id: 1, image_url: "https://res.cloudinary.com/dxmzqi2oa/image/upload/v1741262018/c6ee0d2e594574a12c5df51319fdb95c-2098x1180.jpg_oczenc.webp", address: "37 Bd Albert Delacroix, 35800 Dinard")
puts 'created a van'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 96)
puts 'created a booking'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 98)
puts 'created a booking'

Booking.create(start_date: Date.today, end_date: Date.today + 5, user_id: 1, van_id: 99)
puts 'created a booking'

puts 'Youhooou'
