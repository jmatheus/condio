class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  # GET /reservations
  def index
    @reservations = Reservation.where(user_id: params[:user_id], event_date: Date.today..1.year.since, status: 'active')
                    .order(event_date: :asc)
    render json: @reservations
  end

  def history
    @reservations = Reservation.where(user_id: params[:user_id], event_date: 10.year.ago..Date.today).order(event_date: :desc)
    render json: @reservations
  end

  # GET /reservations/1
  def show
    render json: @reservation
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.reservation_name = "#{@reservation.building_location.name}"
    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reservation_params
      params.require(:reservation).permit(:user_id, :start_hour, :end_hour,
                                          :building_location_id, :event_date,
                                          :reservation_name, :status)
    end
end
