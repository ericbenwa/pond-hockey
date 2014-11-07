class PondsController < ApplicationController
	ForecastIO.api_key = ENV["forecast_api_key"]

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
