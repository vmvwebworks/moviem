class ApplicationController < ActionController::API
  include Response

  def welcome
    json_response("Welcome to Moviem")
  end

  def available_catalog
    @catalog = Movie.all + Season.all
  end

end
