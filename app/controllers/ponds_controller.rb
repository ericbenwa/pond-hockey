class PondsController < ApplicationController

	# Get all ponds.
	def index
		@ponds = Pond.all
	end

	# Get an individual pond.
	def show
		@pond = Pond.find(params[:id])
	end
end
