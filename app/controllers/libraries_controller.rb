class LibrariesController < ApplicationController

  before_action only: [:movies, :seasons] do
    params.require([:email])
    @user = User.find_by_email(params[:email])
  end

  def show
    json_response("For retrieve data use email param and search param for filter, /library/movies for movie purchases and /library/seasons for seasons")
  end

  def movies
    # .search(movie_title_or_movie_plot_cont: params[:search]).result
    json_response(@user.movies.includes(:purchases).where('purchases.user_id = ?', @user.id).alive.ascending.ransack(title_or_plot_cont: params[:search]).result)
  end

  def seasons
    json_response(@user.purchases.alive.seasons.as_json(include: :purchaseable))
  end


end
