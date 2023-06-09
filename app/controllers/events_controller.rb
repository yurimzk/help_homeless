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
        lng: event.longitude,
        id: event.id
      }
    end
    @user_location = {
      lat: current_user.latitude,
      lng: current_user.longitude,
      marker_html: render_to_string(partial: "marker")
    }
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @posts = Post.where(event_id: @event.id)
    @post = Post.new
    @participantdestroy = Participant.find_by(event_id: params[:id], user_id: current_user)
    @participant = Participant.new
    @participants = Participant.where(event_id: @event.id)
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
    params.require(:event).permit(:title, :description, :event_date, :address, :photo)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
