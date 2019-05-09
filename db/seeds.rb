require 'date'
require 'bcrypt'

[
  {name: 'Доски и лыжи', slug: 'boards'},
  {name: 'Крепления', slug: 'attachment'},
  {name: 'Ботинки', slug: 'boots'},
  {name: 'Одежда', slug: 'clothing'},
  {name: 'Инструменты', slug: 'tools'},
  {name: 'Разное', slug: 'other'}
].each {|item| Category.create(item)}

[
  {
    fixture_image_name: 'ava1.jpg',
    email: 'ignat.v@gmail.com',
    name: 'Игнат',
    password: '1',
    contact: 'Скайп'
  },
  {
    fixture_image_name: 'ava2.jpg',
    email: 'kitty_93@li.ru',
    name: 'Леночка',
    password: '1',
    contact: 'Гитхаб'
  },
  {
    fixture_image_name: 'ava3.jpg',
    email: '1',
    name: 'Руслан',
    password: '1',
    contact: 'ВК'
  }
].each do |item|
  user = User.create(item.reject { |key| key.to_s == 'fixture_image_name' })
  path_to_file = Rails.root.join('public', 'img', item[:fixture_image_name])
  user.image.attach(io: File.open(path_to_file), filename: item[:fixture_image_name])
end

[
  {
    fixture_image_name: 'lot-1.jpg',
    name: '2014 Rossignol District Snowboard',
    description: 'Пустое описание',
    start_price: 10_999,
    bet_step: 200,
    author_id: User.order('RANDOM()').first,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    fixture_image_name: 'lot-2.jpg',
    name: 'DC Ply Mens 2016/2017 Snowboard',
    description: 'Пустое описание',
    start_price: 15_999,
    bet_step: 250,
    author_id: User.order('RANDOM()').first,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    fixture_image_name: 'lot-3.jpg',
    name: 'Крепления Union Contact Pro 2015 года размер L/XL',
    description: 'Пустое описание',
    start_price: 15_999,
    bet_step: 250,
    author_id: User.order('RANDOM()').first,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    fixture_image_name: 'lot-4.jpg',
    name: 'Ботинки для сноуборда DC Mutiny Charocal',
    description: 'Пустое описание',
    start_price: 15_999,
    bet_step: 250,
    author_id: User.order('RANDOM()').first,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    fixture_image_name: 'lot-5.jpg',
    name: 'Куртка для сноуборда DC Mutiny Charocal',
    description: 'Пустое описание',
    start_price: 15_999,
    bet_step: 250,
    author_id: User.order('RANDOM()').first,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  },
  {
    fixture_image_name: 'lot-6.jpg',
    name: 'Маска Oakley Canopy',
    description: 'Пустое описание',
    start_price: 15_999,
    bet_step: 250,
    author_id: User.order('RANDOM()').first,
    category: Category.order('RANDOM()').first,
    finish_date: Time.current + 300
  }
].each do |item|
  lot = Lot.create(item.reject { |key| key.to_s == 'fixture_image_name' })
  path_to_file = Rails.root.join('public', 'img', item[:fixture_image_name])
  lot.image.attach(io: File.open(path_to_file), filename: item[:fixture_image_name])
end

[
  {sum: 200, user_id: User.all.last.id, lot_id: Lot.all.first.id},
  {sum: 300, user_id: User.all.first.id, lot_id: Lot.all.first.id},
  {sum: 400, user_id: User.all.last.id, lot_id: Lot.all.first.id},
  {sum: 500, user_id: User.all.first.id, lot_id: Lot.all.first.id}
].each {|item| Bet.create(item)}
