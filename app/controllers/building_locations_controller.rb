class BuildingLocationsController < ApplicationController
  before_action :set_building_location, only: [:show, :update, :destroy]

  # GET /building_locations
  def index
    @building_locations = BuildingLocation.all

    render json: @building_locations, root: nil
  end

  # GET /building_locations/1
  def show
    render json: @building_location
  end

  # POST /building_locations
  def create
    @building_location = BuildingLocation.new(building_location_params)

    if @building_location.save
      render json: @building_location, status: :created, location: @building_location
    else
      render json: @building_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /building_locations/1
  def update
    if @building_location.update(building_location_params)
      r.each do |member|
        #code...
      end
      render json: @building_location
    else
      render json: @building_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /building_locations/1
  def destroy
    @building_location.destroy
  end

  def dates
    @dates = Reservation.where(building_location_id: params[:id], status: 'active').pluck(:event_date)
    render json: @dates
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_location
      @building_location = BuildingLocation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def building_location_params
      params.require(:building_location).permit(:name, :description)
    end
end
