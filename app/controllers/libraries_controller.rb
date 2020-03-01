class LibrariesController < ApplicationController

  before_action only: [:movies, :seasons] do
    redirect_to library_path unless params[:email]
    @user = User.find_by_email(params[:email])
  end

  def show
    json_response("For retrieve data use email param and search param for filter, /library/movies for movie purchases and /library/seasons for seasons")
  end

  def movies
    @movies = @user.purchases.movies.alive.ransack(purchaseable_of_Movie_type_title_or_purchaseable_of_Movie_type_plot_cont: params[:search]).result
  end

  def seasons
    @seasons = @user.purchases.seasons.alive.ransack(purchaseable_of_Season_type_title_or_purchaseable_of_Season_type_plot_cont: params[:search]).result
  end

end
