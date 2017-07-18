# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Team.delete_all
Sponsorship.delete_all
Player.delete_all
Sponsor.delete_all


cohort12 = Team.create({name: "The Geeks Squad", location: "Edinburgh"})
cohort13 = Team.create({name: "The Newbies Squad", location: "Edinburgh"})

playerA = Player.create({name: "Daniel", ranking: 15, team: cohort13})
playerB = Player.create({name: "Richard", ranking: 23, team: cohort13 })
playerC  = Player.create({name: "Paul", ranking: 1, team: cohort12 })
playerD = Player.create({name: "Johnny", ranking: 10, team: cohort12 })

nike = Sponsor.create({name:"Nike", amount: 5000})
adidas = Sponsor.create({name: "Adidas", amount: 1000})

Sponsorship.create({date: '2017-07-20',player: playerA, sponsor: nike})
Sponsorship.create({date: '2017-07-25',player: playerC, sponsor: adidas})

