# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	# Deletes all users to start a fresh database.
	User.delete_all

	# List of all users.
	users_list = [
	  [ "benwa02@gmail.com", "12345678", "12345678"],
	  [ "ericbenwa@gmail.com", "12345678", "12345678"],
	  [ "eric@ebenoit.com", "12345678", "12345678"],
	  [ "e@fitsor.com", "12345678", "12345678"],
	  [ "zar0000@gmail.com", "12345678", "12345678"],
	]

	# Create all users for database.
	users_list.each do |email, password, password_confirmation|
	  User.create!(email: email, password: password, password_confirmation: password_confirmation)
	end

	# Deletes all ponds to start a fresh database.
	Pond.delete_all

	# List of all ponds.
	ponds_list = [
	  [ "348 Franklin Street", "Cambridge", "MA", 0, 42.366020, -71.107833 ],
	  [ "297 Cardinal Street", "Cambridge", "MA", 0, 42.369661, -71.089898 ],
	  [ "62 Broadway Street", "Hanover", "MA", 0, 42.361867, -71.057032 ],
	  [ "22 Church Street", "Whitman", "MA", 0, 42.079071, -70.935855 ]
	]

	# Create all ponds for database.
	ponds_list.each do |street, city, state, user_id, lat, long|
	  Pond.create!(street: street, city: city, state: state, user_id: user_id, lat: lat, long: long)
	end