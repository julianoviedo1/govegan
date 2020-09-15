# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seed Started"

 User.destroy_all
 Shop.destroy_all
 Recipe.destroy_all
 Ingredient.destroy_all

user = User.create!(email:"client3@client.com", password:"123456", first_name:"Juana", last_name:"Rodriguez", adress: 'Llalala 1332 Pb 2', phone_number: 1545454545)
user2 = User.create!(email:"owner@owner.com", password:"123456", first_name:"Luz", last_name:"Farji", adress: 'Local 382', phone_number: 1567754545)

user2.set_as_admin

shop = Shop.new(owner_id: user2.id)
file = URI.open('https://res.cloudinary.com/julianoviedo1/image/upload/v1600117411/G_V_W_M_bqxwdw.png')
shop.logo.attach(io: file, filename: 'GVWM.png', content_type: 'image/png')
shop.save!
admin = User.find_by(first_name: 'Luz')
recipe1 = Recipe.new(
  name: 'Croquetas de hojas de remolacha',
  steps: "Procedimiento:
  - Pre calentar el horno a fuego fuerte.
  - En un bowl poner todos los ingredientes. Mezclar bien.
  - En una fuente para horno con un poquito de aceite ir poniendo croquetas de tamaño que ustedes prefieran.
  Cocinar por 5/7 minutos.",
  owner_id: admin.id
)
file = URI.open('https://res.cloudinary.com/julianoviedo1/image/upload/v1600199964/recipe1.jpg')
recipe1.recipe_photo.attach(io: file, filename: 'recipe1.jpg', content_type: 'image/jpg')
recipe1.save!

recipe_id1 = Recipe.find_by(owner_id: admin.id)

ingredient1for1 = Ingredient.new(
  name: 'Remolacha cocida',
  quantity: 1,
  unit: 'Atado',
  recipe_id: recipe_id1.id
)
ingredient2for1 = Ingredient.new(
  name: 'Harina de avena',
  quantity: 2,
  unit: 'Cucharadas',
  recipe_id: recipe_id1.id

)
ingredient3for1 = Ingredient.new(
  name: 'Harina de garbanzos',
  quantity: 2,
  unit: 'Cucharadas',
  recipe_id: recipe_id1.id

)

# Agregar por defecto "quantity : a gusto"
ingredient4for1 = Ingredient.new(
  name: 'Sal',
  recipe_id: recipe_id1.id

)
ingredient5for1 = Ingredient.new(
  name: 'Pimienta',
  recipe_id: recipe_id1.id

)
ingredient6for1 = Ingredient.new(
  name: 'Cebolla en Polvo',
  quantity: 1,
  unit: 'Cucharadita',
  recipe_id: recipe_id1.id

)
ingredient7for1 = Ingredient.new(
  name: 'Agua',
  quantity: 1/4,
  unit: 'taza',
  recipe_id: recipe_id1.id

)


ingredient1for1.save!
ingredient2for1.save!
ingredient3for1.save!
ingredient4for1.save!
ingredient5for1.save!
ingredient6for1.save!
ingredient7for1.save!

puts "Seed Finished"