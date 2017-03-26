# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### Challenges
Challenge.create([
	{
		game: "Push-Ups"
	},{
		game: "Running"
	},{
		game: "Pull-Ups"
	}
])
# adds day 1 to all competitions and gives access for participants to enter daily count
# Competition.each do |competition|
# 	Competition.participants.each do |participant|
# 		Daily.create([
# 			{
# 				sunshine: 1,
# 				user_id: participant.id,
# 				competition_id: Competition.first.id,
# 				gamecount: 0
# 			}
# 		])
# 	end
# end
