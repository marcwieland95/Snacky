# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Snack.create!(name: 'Popcorn', description: "It's white", price_rappens: 2434, image: File.new("#{Rails.root}/db/seed_images/popcorn.png") )

user = User.new(
    :email                 => 'user@example.com',
    :password              => 'Password1234',
    :password_confirmation => 'Password1234'
)
user.save!