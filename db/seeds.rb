# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	User.delete_all

	users_list = [
	  [ "benwa02@gmail.com", "12345678", "12345678"],
	  [ "ericbenwa@gmail.com", "12345678", "12345678"],
	  [ "eric@ebenoit.com", "12345678", "12345678"],
	  [ "e@fitsor.com", "12345678", "12345678"],
	  [ "zar0000@gmail.com", "12345678", "12345678"],
	]

	users_list.each do |email, password, password_confirmation|
	  User.create!(email: email, password: password, password_confirmation: password_confirmation)
	end

	# Deletes all ponds to start a fresh database.
	Pond.delete_all

	# List of all ponds.
	ponds_list = [
	  [ "348 Franklin Street", "Cambridge", "MA", 0 ],
	  [ "297 Cardinal Street", "Cambridge", "MA", 0 ],
	  [ "62 Broadway Street", "Hanover", "MA", 0 ],
	  [ "22 Church Street", "Whitman", "MA", 0 ]
	]

	# Create all ponds for database.
	ponds_list.each do |street, city, state, user_id|
	  Pond.create!(street: street, city: city, state: state, user_id: user_id)
	end