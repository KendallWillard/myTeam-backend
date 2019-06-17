# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kendall = User.create(first_name: "Kendall", last_name: 'Willard', phone: '4172945180', username: 'ladnek', password: 'yo');
Team.create(name: 'Kansas City Chiefs', city: 'Kansas City', description: "Best team aliveee", user_id: 1);
Team.create(name: 'Denver Nuggets', city: 'Denver', description: "Nug City", user_id: 1);