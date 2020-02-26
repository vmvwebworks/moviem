class PurchasesController < ApplicationController
  before_action except: [:index] do
    @user = User.find_by_email(params[:email])
  end
  def index
    json_response("For retrieve data use type, email and search params")
  end

  def movies
    json_response(@user.movies.alive)
  end

  def seasons
    json_response(@user.seasons.alive)
  end
end
