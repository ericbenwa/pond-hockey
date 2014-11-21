class Comment < ActiveRecord::Base
	belongs_to :pond
	belongs_to :user
end
