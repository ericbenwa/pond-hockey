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

		# Get weather for pond.
		@forecast = ForecastIO.forecast(lat, long)
	end

	def new
		@pond = Pond.new
		@user = user_session
	end

	# Create a pond.
	def create
		@user = user_session
		@pond = Pond.create!(params.require(:pond).permit(:street, :city, :state, :lat, :long, :user_id))
		redirect_to @pond
	end

	# Setup but not in use currently.
	private

		def product_params
			params.require(:pond).permit(:street, :city, :state, :lat, :long, :user_id)
		end
end
