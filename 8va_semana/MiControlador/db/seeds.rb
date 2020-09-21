# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create(name: 'El Túnel', description: 'Novela policial', price: 45.5, stock: 5)
Book.create(name: '100 años de soledad', description: 'Novela clásica', price: 65.5, stock: 33)
Book.create(name: 'El secreto del padre Brown', description: 'Compendio policial', price: 105.5, stock: 13)