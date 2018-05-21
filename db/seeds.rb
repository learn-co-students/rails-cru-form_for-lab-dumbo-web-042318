# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "Michael Jackson", bio: "King of Pop")
Artist.create(name: "Beyonce", bio: "Queen B")

Genre.create(name: "Pop")
Genre.create(name: "R&B")
