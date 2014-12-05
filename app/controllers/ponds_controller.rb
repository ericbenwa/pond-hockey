class PondsController < ApplicationController
	before_action :authenticate_user!
	ForecastIO.api_key = ENV["forecast_api_key"]

	# Get all ponds.
	def index
		@ponds = Pond.all
	end

	# Get an individual pond.
	def show
		@pond = Pond.find(params[:id])
		puts @pond
		latitude = @pond.latitude
		puts latitude
		longitude = @pond.longitude
		puts longitude

		# Get weather for pond.
		@forecast = ForecastIO.forecast(latitude, longitude)
		puts @forecast
		temp = @forecast.currently.temperature.round

		# Merely a demonstration of utilizing data to regurgitate.
		if temp < 32
			@pond_status_message = "Pond is cold enough to skate."
		else
			@pond_status_message = "Pond is not cold enough to skate."
		end

		@comment = Comment.new

		@comments = Comment.where(pond_id: @pond)
	end

	def new
		@pond = Pond.new
		@user = user_session
	end

	# Create a pond.
	def create
		@user = user_session
		@pond = Pond.create!(params.require(:pond).permit(:street, :city, :state, :latitude, :longitude, :user_id))
		redirect_to @pond
	end

	# Setup but not in use currently.
	private

		def product_params
			params.require(:pond).permit(:street, :city, :state, :latitude, :longitude, :user_id)
		end
end
