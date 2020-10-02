# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kitten.destroy_all

@kitten_1 = Kitten.create(name: "kitty_1", age: 1, cuteness: "Extra Cute", softness: "Very Softness")
@kitten_2 = Kitten.create(name: "kitty_2", age: 2, cuteness: "Somewhat Cute", softness: "Very Softness")
@kitten_3 = Kitten.create(name: "kitty_3", age: 1, cuteness: "Extra Cute", softness: "Very Softness")
@kitten_4 = Kitten.create(name: "kitty_4", age: 3, cuteness: "Not Cute", softness: "Medium Softness")
@kitten_5 = Kitten.create(name: "kitty_5", age: 1, cuteness: "Extra Cute", softness: "Very Softness")
@kitten_6 = Kitten.create(name: "kitty_6", age: 10, cuteness: "Really Cute", softness: "Not So Softness")