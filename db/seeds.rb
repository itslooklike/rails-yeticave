require 'date'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
  {name: 'Доски и лыжи', slug: 'boards'},
  {name: 'Крепления', slug: 'attachment'},
  {name: 'Ботинки', slug: 'boots'},
  {name: 'Одежда', slug: 'clothing'},
  {name: 'Инструменты', slug: 'tools'},
  {name: 'Разное', slug: 'other'}
]

categories.each { |item| Category.create(item) }

users = [
  {email: 'ignat.v@gmail.com', name: 'Игнат', password: '123', avatar_url: 'img/ava1.png', contact: 'Скайп'},
  {email: 'kitty_93@li.ru', name: 'Леночка', password: '123', avatar_url: 'img/ava2.png', contact: 'Гитхаб'},
  {email: 'warrior07@mail.ru', name: 'Руслан', password: '123', avatar_url: 'img/ava3.png', contact: 'ВК'},
]

users.each { |item| User.create(item) }

lots = [
  {
    name: '2014 Rossignol District Snowboard',
    description: 'Пустое описание',
    image_url: 'img/lot-1.jpg',
    start_price: 10_999,
    bet_step: 200,
    author_id: 1,
    category_id: 1,
    finish_date: Time.current + 300
  },
  {
    name: 'DC Ply Mens 2016/2017 Snowboard',
    description: 'Пустое описание',
    image_url: 'img/lot-2.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category_id: 1,
    finish_date: Time.current + 300
  },
  {
    name: 'Крепления Union Contact Pro 2015 года размер L/XL',
    description: 'Пустое описание',
    image_url: 'img/lot-3.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category_id: 1,
    finish_date: Time.current + 300
  },
  {
    name: 'Ботинки для сноуборда DC Mutiny Charocal',
    description: 'Пустое описание',
    image_url: 'img/lot-4.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category_id: 1,
    finish_date: Time.current + 300
  },
  {
    name: 'Куртка для сноуборда DC Mutiny Charocal',
    description: 'Пустое описание',
    image_url: 'img/lot-5.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category_id: 1,
    finish_date: Time.current + 300
  },
  {
    name: 'Маска Oakley Canopy',
    description: 'Пустое описание',
    image_url: 'img/lot-6.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category_id: 1,
    finish_date: Time.current + 300
  }
]

lots.each { |item| Lot.create(item) }
