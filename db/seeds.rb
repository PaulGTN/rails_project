# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#User.destroy_all
#Article.destroy_all
#Category.destroy_all
#Commentaire.destroy_all

10.times do 
  user = User.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.email)
end

10.times do 
  article = Article.create!(user_id: rand(10) + 1, category_id: rand(10) + 1, title: Faker::Food.unique.dish, content: Faker::Food.unique.description)
end

5.times do 
  category = Category.create!(name: Faker::Food.unique.vegetables)
end 

#15.times do 
#  commentaire = Commentaire.create!(user_id: rand(10) + 1, article_id: rand (10) + 1, content: Faker::Friends.unique.quote)
#end 