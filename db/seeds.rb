# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "User 1", image_url: "https://i0.wp.com/cu-sentry.com/wp-content/uploads/2017/11/wu-tang.jpg", email: "a@a.com", password: "123456", password_confirmation: "123456")
User.create(username: "User 2", image_url: "https://i0.wp.com/cu-sentry.com/wp-content/uploads/2017/11/wu-tang.jpg", email: "aa@a.com", password: "123456", password_confirmation: "123456")
User.create(username: "User 3", image_url: "https://i0.wp.com/cu-sentry.com/wp-content/uploads/2017/11/wu-tang.jpg", email: "aaa@a.com", password: "123456", password_confirmation: "123456")

Recipe.insert(1, User.find(1).id, "Recipe 1", "Category 1", "Description 1", "Body 1")
Recipe.insert(2, User.find(2).id, "Recipe 2", "Category 2", "Description 2", "Body 2")
Recipe.insert(3, User.find(2).id, "Recipe 3", "Category 3", "Description 3", "Body 3")
