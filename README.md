# Сборка и запуск в development
1. `bundle i`
2. `rake db:migrate`
3. `rake db:seed`
4. *`rake assets:compile` - если есть желание ускорить сборку проекта
5. `rails s` - запуск сервера


# Деплой в production:
1. `rake db:migrate db:seed RAILS_ENV=production`
2. `rails s -e production`

# Команды
`rails s` - старт сервера разработки
`rails c` - консоль локального доступа
`bundler update` - обновление
`bundler install` | `bundle` - сборка модулей приложения
`bundle exec rake middleware` - получить список всех промежуточных программ приложения

`rails [generate | g] controller Main index help about` - контроллер
`rails destroy controller Main` - откат
`rails generate model User name:string email:string` - модель
`rails destroy model User` - откат назад
`rails generate scaffold User name:string email:string` - генерация полного ресурса (модель + контроллер)
`rails routes` - проверка состава путей
    

`rake db:migrate` - миграция
`rake db:seed` - заполнение БД из файла seeds.rb
