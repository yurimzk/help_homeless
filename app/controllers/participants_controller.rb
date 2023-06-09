class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[update destroy]

  def create
    @participant = Participant.new
    @participant.user_id = current_user.id
    @participant.event_id = params[:event_id]
    if @participant.save
      redirect_to event_path(params[:event_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @participant.update(participant_params)
      redirect_to event_path(@participant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @participant.destroy
    redirect_to participants_path
  end

  private

  def participant_params
    params.require(:participant).permit(:user_id, :event_id)
  end

  def set_participant
    @participant = Participant.find(params[:id])
  end
end
