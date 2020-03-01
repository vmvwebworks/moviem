class PurchasesController < ApplicationController
  before_action except: [:index] do
    @user = User.find_by_email(params[:email])
  end
end
