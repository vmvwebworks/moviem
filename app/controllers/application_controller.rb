class ApplicationController < ActionController::API
  include Response

  def welcome
    json_response("Welcome to Moviem")
  end

end
