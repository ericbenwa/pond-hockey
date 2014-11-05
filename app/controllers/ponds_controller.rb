class PondsController < ApplicationController

  # GET /ponds
  # GET /ponds.json
  def index
    @ponds = Pond.all
  end
end
