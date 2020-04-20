class PastEventsController < ApplicationController
  def index
    @past_events = PastEvent.all
  end

  def new
    @past_event = PastEvent.new
  end

  def create
    @past_event = PastEvent.new(past_event_params)
    if @past_event.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def past_event_params
    params.require(:past_event).permit(:title, :description, :date_start, :date_end)
  end

end
