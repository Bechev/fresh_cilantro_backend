# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


item_list = [
    ["Mini Classic", "Chanel", "Empty description"],
    ["Hermes Belt", "Hermes", "Empty description"],
    ["LV cross body","Louis Vuitton","Empty description"],
    ["WOC","Chanel" ,"Empty description"],
    ["Espadrilles", "Chanel","Empty description"],
    ["Sneakers", "Gucci", "Empty description"],
    ["Coin purse", "Fendi", "Empty description"],
]

item_list.each do |name,brand, description|
    Item.create(name: name, brand: brand, description: description)
end
