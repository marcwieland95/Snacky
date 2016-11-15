# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Snack.create(name: 'Popcorn', description: "It's white", price_rappens: Money.new(12.34), image: File.new("#{Rails.root}/db/seed_images/popcorn.png") )