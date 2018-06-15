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

Recipe.insert(User.find(1).id, "Recipe 1", "Category 1", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Body 1", "1 hr 25 mins", 6, "https://cms.splendidtable.org/sites/default/files/styles/w2000/public/Spaghetti-Pic__Photocredit-David-Loftus-LEDE.jpg?itok=-7KB2KCR")

Recipe.insert(User.find(2).id, "Recipe 2", "Category 2", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Body 2", "1 hr 55 mins", 4, "https://cms.splendidtable.org/sites/default/files/styles/w2000/public/Spaghetti-Pic__Photocredit-David-Loftus-LEDE.jpg?itok=-7KB2KCR")

Recipe.insert(User.find(2).id, "Recipe 3", "Category 3", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "Body 3", "1 hr 55 mins", 5, "https://cms.splendidtable.org/sites/default/files/styles/w2000/public/Spaghetti-Pic__Photocredit-David-Loftus-LEDE.jpg?itok=-7KB2KCR")
