require 'date'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
  'Доски и лыжи',
  'Крепления',
  'Ботинки',
  'Одежда',
  'Инструменты',
  'Разное'
]

categories.each do |category|
  Category.create(name: category)
end

users = [
  { reg_date: DateTime.now - 10, email: 'ignat.v@gmail.com', name: 'Игнат', password: '123', avatar_url: 'img/ava1.png', contact: 'Скайп' },
  { reg_date: DateTime.now - 50, email: 'kitty_93@li.ru', name: 'Леночка', password: '123', avatar_url: 'img/ava2.png', contact: 'Гитхаб' },
  { reg_date: DateTime.now - 100, email: 'warrior07@mail.ru', name: 'Руслан', password: '123', avatar_url: 'img/ava3.png', contact: 'ВК' },
]

users.each do |user|
  User.create(user)
end
