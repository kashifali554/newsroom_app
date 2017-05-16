# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
#Add as much articles seed following this pattern
Article.create({id: 1, headline:"Adorable Kitty", img:"http://i.imgur.com/UtxDmzY.jpg", text:"This is the post text", category:"latest", user_id:6})

p "Article count:", Article.count
