# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


item_list = [
    ["Mini Classic", "Chanel", "Empty description", 100],
    ["Hermes Belt", "Hermes", "Empty description", 43],
    ["LV cross body","Louis Vuitton","Empty description", 27],
    ["WOC","Chanel" ,"Empty description", 52],
    ["Espadrilles", "Chanel","Empty description", 37],
    ["Sneakers", "Gucci", "Empty description", 23],
    ["Coin purse", "Fendi", "Empty description", 01],
]

item_list.each do |name,brand, description, likes|
    Item.create(name: name, brand: brand, description: description, likes: likes)
end
