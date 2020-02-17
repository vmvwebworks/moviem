class PurchasesController < ApplicationController
  before_action do
    @user = User.find(params[:user_id])
  end

  def movies
    json_response(@user.movies.alive)
  end

  def seasons
    json_response(@user.seasons.alive)
  end
end
