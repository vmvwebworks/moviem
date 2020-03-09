class PurchasesController < ApplicationController
  before_action except: [:index] do
    @user = User.find_by_email(params[:email])
  end

  def create
    case purchaseable
    when params[:movie_id]
      movie_purchase
    when params[:season_id]
      season_purchase
    end
  end

  def movie_purchase
    unless @user.movies.alive.exists?(params[:movie_id])
      @user.purchases.create!(purchaseable_id: params[:movie_id], purchaseable_type: "Movie", option_id: params[:option_id])
    end
  end

  def season_purchase
    @user.purchases.create!(purchaseable_id: params[:season_id], purchaseable_type: "Season", option_id: params[:option_id])
  end

  def purchaseable
    params[:season_id] || params[:movie_id]
  end

end
