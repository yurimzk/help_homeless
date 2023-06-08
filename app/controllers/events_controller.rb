class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = Event.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR description ILIKE :query"
      @events = @events.where(sql_subquery, query: "%#{params[:query]}%")
    end
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @posts = Post.where(event_id: @event.id)
    @post = Post.new
    @comment = Comment.new
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    redirect_to root
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :event_date, :photo)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
