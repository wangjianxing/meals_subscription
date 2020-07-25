# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meal.create!(name: 'Food A', description: 'Food A Desctiption', price: 10, sku: 'food_a')
Meal.create!(name: 'Food B', description: 'Food B Desctiption', price: 10, sku: 'food_b')
Meal.create!(name: 'Food C', description: 'Food C Desctiption', price: 10, sku: 'food_c')
Meal.create!(name: 'Food D', description: 'Food D Desctiption', price: 10, sku: 'food_d')
Meal.create!(name: 'Food E', description: 'Food E Desctiption', price: 10, sku: 'food_e')
Meal.create!(name: 'Food F', description: 'Food F Desctiption', price: 10, sku: 'food_f')
Meal.create!(name: 'Food G', description: 'Food G Desctiption', price: 10, sku: 'food_g')
Meal.create!(name: 'Food H', description: 'Food H Desctiption', price: 10, sku: 'food_h')
Meal.create!(name: 'Food I', description: 'Food I Desctiption', price: 10, sku: 'food_i')
Meal.create!(name: 'Food J', description: 'Food J Desctiption', price: 10, sku: 'food_j')

Cutoff.create!(name: 'Tuesday 8 pm', off_at: DateTime.iso8601('2020-07-21T20:00:00+08:00'))
Cutoff.create!(name: 'Thursday 8 pm', off_at: DateTime.iso8601('2020-07-23T20:00:00+08:00'))