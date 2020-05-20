class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:show, :index, :public_events, :private_events]

  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
end
