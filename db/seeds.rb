# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Image.delete_all
Image.reset_pk_sequence
Image.create([
  {name: 'Концепт-дизайн приложения для управления автомобилем', file: 'car.jpg', theme_id: 3},
  {name: 'Приложение кофейни для заказа', file: 'coffee.jpg', theme_id: 2},
  {name: 'Приложение для покупки авиабилетов', file: 'fly.jpg', theme_id: 2},
  {name: 'Концепт-дизайн приложения для заказа еды', file: 'food.jpg', theme_id: 2},
  {name: 'Плеер для музыки в стиле неоморфизм', file: 'player.jpg', theme_id: 3},
  {name: 'Умный дом для растений и магазин', file: 'plant.jpg', theme_id: 3},
  {name: 'Онлайн-магазин обуви', file: 'shoes.jpg', theme_id: 2},
  {name: 'Умный дом с функцией контроля микроклимата', file: 'smarthome.jpg', theme_id: 3},
  {name: 'Прототип магазина электроники', file: 'store.jpg', theme_id: 2},
  {name: 'Магазин классических наручных часов', file: 'watch.jpg', theme_id: 2},
  {name: 'Умный дом с функцией блокировки замков', file: 'smartlock.jpg', theme_id: 3},
  {name: 'Управление освещением через тематическое приложение', file: 'smartlight.jpg', theme_id: 3},
  {name: 'Темный мессенджер', file: 'messenger.jpg', theme_id: 4},
  {name: 'Светлый мессенджер: оттенки серого', file: 'simplechat.jpg', theme_id: 4},
  {name: 'Мессенджер 3 цвета - черный, белый, красный', file: 'redchat.jpg', theme_id: 4},
  {name: 'Темный мессенджер: глубокий черный', file: 'darkmessenger.jpg', theme_id: 4},
])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
  {name: "-"},
  {name: "Какой дизайн лучше настраивает пользователя на заказ / покупку товара?"},
  {name: "Какой дизайн приложения является наименее отвлекающим и позволяет сосредоточиться на функционале?"},
  {name: "Какой дизайн чата удобнее для частых переписок?"},
])