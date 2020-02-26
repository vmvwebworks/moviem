class UsersController < ApplicationController

  before_action except: [:index] do
    user_by_id || user_by_email
  end

  def show
    json_response(@user)
  end

  def library
    json_response(type.search(purchaseable_title_or_purchaseable_plot_cont: params[:search]).result.ascending)
  end

  private

  def user_by_id
    if params[:id] || params[:user_id]
      @user = User.find(params[:id] || params[:user_id])
    end
  end

  def user_by_email
    if params[:email]
      @user = User.find_by_email(params[:email])
    end
  end

  def type
    case params[:type]
    when "movies"
      movies
    when "seasons"
      seasons
    end
  end
  # TODO it's better to not allow the alive method here and isolate on other, then you can switch between alive/expired.
  # def movies
  #   @user.movies.alive
  # end
  #
  # def seasons
  #   @user.seasons.alive
  # end
  def movies
    @user.purchases.alive.movies
  end

  def seasons
    @user.purchases.alive.seasons
  end

end
