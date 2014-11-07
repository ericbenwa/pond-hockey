# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	# users_list = [
	#   [ "benwa02@gmail.com"],
	#   [ "ericbenwa@gmail.com"],
	#   [ "eric@ebenoit.com"],
	#   [ "e@fitsor.com"],
	#   [ "zar0000@gmail.com"],
	# ]

	# users_list.each do |email|
	#   User.create(email: email)
	# end

	ponds_list = [
	  [ "348 Franklin Street", "Cambridge", "MA", 0 ],
	  [ "297 Cardinal Street", "Cambridge", "MA", 0 ],
	  [ "62 Broadway Street", "Hanover", "MA", 0 ],
	  [ "22 Church Street", "Whitman", "MA", 0 ]
	]

	ponds_list.each do |street, city, state, user_id|
	  Pond.create(street: street, city: city, state: state, user_id: user_id)
	end