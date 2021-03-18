# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Cleaning database.."
Ingredient.destroy_all
Cocktail.destroy_all

puts "Creating ingredients.."

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts "Creating cocktails.."

cocktail_1_picture = URI.open ('https://images.unsplash.com/photo-1598994392980-53a7fb033bcc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=564&q=80')
cocktail_1 = Cocktail.new({
    name: "Malibu Sunrise"
})
cocktail_1.photo.attach(io: cocktail_1_picture, filename: 'cocktail_1.png', content_type: 'image/png')
cocktail_1.save!

cocktail_2_picture = URI.open ('https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
cocktail_2 = Cocktail.new({
    name: "Rum and Coke"
})
cocktail_2.photo.attach(io: cocktail_2_picture, filename: 'cocktail_2.png', content_type: 'image/png')
cocktail_2.save!

cocktail_3_picture = URI.open ('https://images.unsplash.com/photo-1607446045875-de57c995726b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
cocktail_3 = Cocktail.new({
    name: "Green lagoon"
})
cocktail_3.photo.attach(io: cocktail_3_picture, filename: 'cocktail_3.png', content_type: 'image/png')
cocktail_3.save!