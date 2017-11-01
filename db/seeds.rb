# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Coin.destroy_all

wladi = User.create(name: 'Wladimir', email: 'wladimirgramacho@gmail.com', password: '123456')
fabs = User.create(name: 'Fabs', email: 'fabs@gmail.com', password: '123456')

bitcoin = Coin.create(name: 'Bitcoin', price: '2048.32');
billycoin = Coin.create(name: 'Billycoin', price: '9999.99');
kryptocoin = Coin.create(name: 'Kryptocoin', price: '213.21');
