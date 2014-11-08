class PondsController < ApplicationController
	ForecastIO.api_key = ENV["forecast_api_key"]

	# Get all ponds.
	def index
		@ponds = Pond.all
	end

	# Get an individual pond.
	def show
		@pond = Pond.find(params[:id])
		lat = @pond.lat
		long = @pond.long
		@forecast = ForecastIO.forecast(lat, long)
	end

	# Create a pond.
	def create

	end
end
