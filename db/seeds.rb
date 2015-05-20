# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Han Solo', points: 15, side: 'Rebellion')
User.create(name: 'Luke SkyWalker', points: 10, side: 'Rebellion')
User.create(name: 'Princess Leia', points: 5, side: 'Rebellion')
User.create(name: 'Jabba the Hut', points: 5, side: 'Independent')
User.create(name: 'Darth Vader', points: 5, side: 'Empire')
User.create(name: 'Chewbacca', points: 15, side: 'Rebellion')
User.create(name: 'Lando Calrissian', points: 20, side: 'Rebellion')
User.create(name: 'Master Yoda' , points: 30, side: 'Rebellion')
User.create(name: 'Obi Wan Kanobi', points: 2, side: 'Rebellion')