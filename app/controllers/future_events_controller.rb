class FutureEventsController < ApplicationController
def index
    @future_events = FutureEvent.all
  end

  def show
    @future_event = FutureEvent.find(params[:id])
  end

  def new
    @future_event = FutureEvent.new
  end

  def create
    @future_event = FutureEvent.new(future_event_params)
    if @future_event.save
      redirect_to future_events_path, notice: 'successfully created.'
    else
      render :new
    end
  end

  def edit
    @future_event = FutureEvent.find(params[:id])
  end

  def update
    @future_event = FutureEvent.find(params[:id])
    @future_event.update(future_event_params)
    redirect_to future_events_path, notice: 'update done'
  end

  def destroy
    @future_event = FutureEvent.find(params[:id])
    @future_event.destroy
    redirect_to future_events_path, notice: 'successfully deleted'
  end

  private

  def future_event_params
    params.require(:future_event).permit(:title, :description, :date_start, :date_end, :location, :id)
  end

end
