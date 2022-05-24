School_Test
ruby "3.0.0"
"rails", "~> 7.0.3"

DB mysql
user: rails_user
pass: qwerty12345

Run app
rails db:migrate
rails db:seed
rails tailwindcss:build
rails s