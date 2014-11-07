class PondsController < ApplicationController

  # GET /ponds
  # GET /ponds.json
  def index
    @ponds = Pond.all
  end

	def show
	@pond = Pond.find(params[:id])
  end
end
