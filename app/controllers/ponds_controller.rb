class PondsController < ApplicationController
	ForecastIO.api_key = '804882f53093e857db785207fe59b645'

	# Get all ponds.
	def index
		@ponds = Pond.all
	end

	# Get an individual pond.
	def show
		@pond = Pond.find(params[:id])
		@forecast = ForecastIO.forecast(37.8267, -122.423)
	end
end
