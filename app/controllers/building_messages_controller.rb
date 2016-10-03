class BuildingMessagesController < ApplicationController
  before_action :set_building_message, only: [:show, :update, :destroy]

  # GET /building_messages
  def index
    @building_messages = BuildingMessage.all.order(created_at: :desc)
    @building_message = BuildingMessage.new

    respond_to do |format|
      format.html
      format.json { render json: @building_messages }
    end
  end

  # GET /building_messages/1
  def show
    render json: @building_message
  end

  # POST /building_messages
  def create
    @building_message = BuildingMessage.new(building_message_params)
    if @building_message.save
      # NotificationService.notify
      respond_to do |format|
        format.html { redirect_to building_messages_path }
        format.json { render json: @building_message, status: :created, location: @building_message }
      end
    else
      respond_to do |format|
        format.html
        format.json { render json: @building_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building_messages/1
  def update
    if @building_message.update(building_message_params)
      render json: @building_message
    else
      render json: @building_message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /building_messages/1
  def destroy
    @building_message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_message
      @building_message = BuildingMessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def building_message_params
      params.require(:building_message).permit(:user_id, :message_title, :message_description)
    end
end
