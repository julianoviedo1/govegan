# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seed Started"

# User.destroy_all
# Shop.destroy_all

user = User.create!(email:"client3@client.com", password:"123456", first_name:"Juana", last_name:"Rodriguez", adress: 'Llalala 1332 Pb 2', phone_number: 1545454545)
user2 = User.create!(email:"owner@owner.com", password:"123456", first_name:"Luz", last_name:"Farji", adress: 'Local 382', phone_number: 1567754545)

user2.set_as_admin

shop = Shop.new(owner: user2)
file = URI.open('https://res.cloudinary.com/julianoviedo1/image/upload/v1600117411/G_V_W_M_bqxwdw.png')
shop.logo.attach(io: file, filename: 'GVWM.png', content_type: 'image/png')
shop.save!
puts "Seed Finished"