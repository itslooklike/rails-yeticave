require 'date'
require 'bcrypt'

categories = [
  {name: 'Доски и лыжи', slug: 'boards'},
  {name: 'Крепления', slug: 'attachment'},
  {name: 'Ботинки', slug: 'boots'},
  {name: 'Одежда', slug: 'clothing'},
  {name: 'Инструменты', slug: 'tools'},
  {name: 'Разное', slug: 'other'}
]

categories.each {|item| Category.create(item)}

users = [
  {email: 'ignat.v@gmail.com', name: 'Игнат', password: '1', avatar_url: 'img/ava1.jpg', contact: 'Скайп'},
  {email: 'kitty_93@li.ru', name: 'Леночка', password: '1', avatar_url: 'img/ava2.jpg', contact: 'Гитхаб'},
  {email: '1', name: 'Руслан', password: '1', avatar_url: 'img/ava3.jpg', contact: 'ВК'},
]

users.each {|item| User.create(item)}

lots = [
  {
    name: '2014 Rossignol District Snowboard',
    description: 'Пустое описание',
    image_url: '/img/lot-1.jpg',
    start_price: 10_999,
    bet_step: 200,
    author_id: 1,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    name: 'DC Ply Mens 2016/2017 Snowboard',
    description: 'Пустое описание',
    image_url: '/img/lot-2.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    name: 'Крепления Union Contact Pro 2015 года размер L/XL',
    description: 'Пустое описание',
    image_url: '/img/lot-3.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    name: 'Ботинки для сноуборда DC Mutiny Charocal',
    description: 'Пустое описание',
    image_url: '/img/lot-4.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    name: 'Куртка для сноуборда DC Mutiny Charocal',
    description: 'Пустое описание',
    image_url: '/img/lot-5.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    name: 'Маска Oakley Canopy',
    description: 'Пустое описание',
    image_url: '/img/lot-6.jpg',
    start_price: 15_999,
    bet_step: 250,
    author_id: 1,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  }
]

lots.each {|item| Lot.create(item)}

bets = [
  {sum: 200, user_id: User.all.last.id, lot_id: Lot.all.first.id},
  {sum: 300, user_id: User.all.first.id, lot_id: Lot.all.first.id},
  {sum: 400, user_id: User.all.last.id, lot_id: Lot.all.first.id},
  {sum: 500, user_id: User.all.first.id, lot_id: Lot.all.first.id}
]

bets.each {|item| Bet.create(item)}
