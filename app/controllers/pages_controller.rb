class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @past_events = PastEvent.all
    @future_events = FutureEvent.all
  end

  def index
    @past_events = PastEvent.all
  end

  def show
    @past_event = PastEvent.find(params[:id])
  end

end
