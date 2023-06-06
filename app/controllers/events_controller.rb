class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def new
  # end

  # def new
  # end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:title)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
