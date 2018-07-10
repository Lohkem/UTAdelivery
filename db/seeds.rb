# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Casino.destroy_all
Product.destroy_all

#######################################
casino_1 = Casino.create(
	nombre: "El Yeyo Loco",
	tipocomida: "Arabe",
	rangoprecio: "$$",
	ubicacion: "Casino Central"
)

Product.create(
	name: "Completo",
	price: 1000,
	casino: casino_1
)

Product.create(
	name: "Super Yiro",
	price: 200,
	casino: casino_1
)

#######################################
casino_2 = Casino.create(
	nombre: "Donde Yiro",
	tipocomida: "Criolla",
	rangoprecio: "$",
	ubicacion: "Red Line"
)

Product.create(
	name: "Papas Fritas",
	price: 1500,
	casino: casino_2
)

Product.create(
	name: "Pan con palta",
	price: 350,
	casino: casino_2
)

Product.create(
	name: "Cola de Tigre",
	price: 350,
	casino: casino_2
)

#######################################
casino_3 = Casino.create(
	nombre: "El Chanta Jagger",
	tipocomida: "Mediterranea",
	rangoprecio: "$$$",
	ubicacion: "Calm Belt"
)

Product.create(
	name: "Asado a la Lokem",
	price: 7500,
	casino: casino_3
)

Product.create(
	name: "Sopa Macondo",
	price: 9000,
	casino: casino_3
)

Product.create(
	name: "Trululu",
	price: 750,
	casino: casino_3
)

#######################################
User.create(
	name: "Adonis Flowers",
	email: "uff@men.com",
	password: "1234",
	password_confirmation: "1234"
)