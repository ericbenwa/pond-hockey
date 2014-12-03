class Pond < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	def full_address
	  [street, city, state].compact.join(', ')
	end

	geocoded_by :full_address
	after_validation :geocode
end
