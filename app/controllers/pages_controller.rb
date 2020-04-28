class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @past_events = PastEvent.last(2)
    @future_events = FutureEvent.last(2)
  end
end
