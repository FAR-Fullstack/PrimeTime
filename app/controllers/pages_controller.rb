class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @past_events = PastEvent.all
    @future_events = FutureEvent.all
  end
end
