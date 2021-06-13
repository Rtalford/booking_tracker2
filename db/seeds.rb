# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create([
#     {email: "Florence@gmail.com", first_name: "Florence", last_name: "C", password: "Florence1"}, 
#     {email: "Francis@gmail.com", first_name: "Francis", last_name: "F", password: "Francis1"}, 
#     {email: "Thelma@gmail.com", first_name: "Thelma", last_name: "J", password: "Thelma1"},
# ])

# Airline.create([
#     {name: "Delta"},
#     {name: "American_Airlines"},
#     {name: "Southwestern_Airlines"},
# ])

User.create(email: "Florence@gmail.com", first_name: "Florence", last_name: "C", password: "Florence1")
User.create(email: "Francis@gmail.com", first_name: "Francis", last_name: "F", password: "Francis1")
User.create(email: "Thelma@gmail.com", first_name: "Thelma", last_name: "J", password: "Thelma1")

Airline.create(name: “American_Airlines”)
Airline.create(name: “Delta”)
Airline.create(name: “Southwestern_Airlines”)


