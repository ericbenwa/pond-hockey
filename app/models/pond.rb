class Pond < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	geocoded_by :street
	after_validation :geocode
end
