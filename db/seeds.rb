# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "admin",
             email: "kylesallette@gmail.com",
             password:              "red",
             role: 1)


Image.create!(name: "plant", url: "https://i.imgur.com/XIupYcP.jpg" )
Image.create!(name: "muppits", url: "https://i.imgur.com/5Wmv2KY.jpg")
Image.create!(name: "leaf", url: "https://i.imgur.com/sFuzBo6.jpg" )
Image.create!(name: "pond", url: "https://i.imgur.com/YalzVCE.jpg" )
Image.create!(name: "bulb", url: "https://i.imgur.com/JYitq2w.jpg" )
Image.create!(name: "plant", url: "https://i.imgur.com/WXFWwFc.jpg" )
