class UsersController < ApplicationController

  before_action except: [:index] do
    user_by_id || user_by_email
  end

  def show
    json_response(@user)
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

end
