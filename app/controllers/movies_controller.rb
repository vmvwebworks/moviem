class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order("created_at DESC")
  end
end
