class PastEventsController < ApplicationController
  def index
    @past_events = PastEvent.all
  end

  def show
    @past_event = PastEvent.find(params[:id])
  end

  def new
    @past_event = PastEvent.new
  end

  def create
    @past_event = PastEvent.new(past_event_params)
    # past_event_params[:photos].each do |photo|
    #     @past_event.photos.attach(photo)
    # end
    @past_event.category = past_event_params[:category][1]
    if @past_event.save
      redirect_to past_events_path, notice: 'successfully created.'
    else
      render :new
    end
  end

  def edit
    @past_event = PastEvent.find(params[:id])
  end

  def update
    @past_event = PastEvent.find(params[:id])
    @past_event.update(past_event_params)
    redirect_to past_events_path, notice: 'update done'
  end

  def destroy
    @past_event = PastEvent.find(params[:id])
    @past_event.destroy
    redirect_to past_events_path, notice: 'successfully delete'
  end

  def public_events
    @past_events = PastEvent.where(category: "Public Event")
  end

  def private_events
    @past_events = PastEvent.where(category: "Private Event")
  end

  def delete_one_photo
    @past_event = PastEvent.find(params[:id])
    raise
    # photo = @past_event.photos[past_event_params[:id]]
    # photo.destroy
    redirect_to past_events_path, notice: 'successfully delete'
  end

  private

  def past_event_params
    params.require(:past_event).permit(:title, :description, :date_start, :date_end, :location, :id, category: [], photos: [])
  end
end
