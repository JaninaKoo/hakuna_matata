# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Beach.destroy_all
User.destroy_all

#listing seed
#image seed
user = User.create(email: 'steve@gmail.com', password: '123456')

puts "Adding beaches..."

beaches = [
  { user: user, name: 'Aloha', location: 'Patong', description: 'Beautiful beach', price: 100, photo: Rails.root.join("app/assets/images/beach_1.jpeg").open },
  { user: user, name: 'Kuala', location: 'Kuta', description: 'Amazing place', price: 150, photo: Rails.root.join("app/assets/images/beach_2.jpeg").open },
  { user: user, name: 'Santos', location: 'Siaton', description: 'Beautiful beach', price: 150, photo: Rails.root.join("app/assets/images/beach_3.jpeg").open },
  { user: user, name: 'Kirailia', location: 'Mambajao', description: 'Amazing place', price: 150, photo: Rails.root.join("app/assets/images/beach_4.jpeg").open },
  { user: user, name: 'Tranquility', location: 'Ormoc', description: 'Amazing place', price: 2000, photo: Rails.root.join("app/assets/images/beach_5.jpeg").open },
  { user: user, name: 'Oasis', location: 'Asia', description: 'Beautiful beach', price: 2000, photo: Rails.root.join("app/assets/images/beach_6.jpeg").open },
  { user: user, name: 'Neptune', location: 'Mallorca', description: 'Amazing place', price: 566, photo: Rails.root.join("app/assets/images/beach_7.jpeg").open },
  { user: user, name: 'Atlantis', location: 'Algarve', description: '5-star treatment', price: 987, photo: Rails.root.join("app/assets/images/beach_8.jpeg").open },
  { user: user, name: 'Boa', location: 'Goa', description: '5-star treatment', price: 800, photo: Rails.root.join("app/assets/images/beach_10.jpeg").open },
  { user: user, name: 'Seven Seas', location: 'Lagos', description: 'Beautiful beach', price: 2000, photo: Rails.root.join("app/assets/images/beach_11.jpeg").open },
  { user: user, name: 'Love island', location: 'Salento', description: 'Beautiful beach', price: 800, photo: Rails.root.join("app/assets/images/beach_12.jpeg").open },
  { user: user, name: 'Dreams', location: 'Thasos', description: '5-star treatment', price: 800, photo: Rails.root.join("app/assets/images/beach_13.jpeg").open },
  { user: user, name: 'Pina', location: 'Milos', description: '5-star treatment', price: 800, photo: Rails.root.join("app/assets/images/beach_14.jpeg").open },
  { user: user, name: 'Exclusive', location: 'Ko Samui', description: '5-star treatment', price: 800, photo: Rails.root.join("app/assets/images/beach_15.jpeg").open },
  { user: user, name: 'Mauria', location: 'Ydra', description: '5-star treatment', price: 800, photo: Rails.root.join("app/assets/images/beach_16.jpeg").open },
]

beaches.each do |beach|
  beach[:latitude] = Faker::Address.latitude
  beach[:longitude] = Faker::Address.longitude

  Beach.create(beach)
  print "."
end

puts "done!"

  # validates :name, presence: true
  # validates :location, presence: true
  # validates :description, presence: true
  # validates :price,
