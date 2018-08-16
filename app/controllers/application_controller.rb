require "application_responder"

class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  respond_to :html, :js, :json

end
