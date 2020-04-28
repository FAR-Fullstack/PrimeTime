class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:show, :index, :public_events, :private_events]

end
