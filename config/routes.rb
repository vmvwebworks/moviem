Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#welcome'

  resource :library, only: [:show] do
    get :movies
    get :seasons
  end
  # resources :users, only: [:show] do
  #   # member do
  #   #   get :library
  #   # end
  #   resources :purchases, except: [:destroy] do
  #     collection do
  #       get :movies
  #       get :seasons
  #     end
  #   end
  # end

  # resources :movies, only: [:index, :show] do
  #   collection do
  #     get :alive
  #   end
  # end

  # resources :seasons, only: [:index, :show] do
  #   resources :episodes, only: [:index, :show] do
  #     collection do
  #       get :alive
  #     end
  #   end
  # end
end
