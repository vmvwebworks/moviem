Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#welcome'

  get :available_catalog, to: 'application#available_catalog'

  resource :library, only: [:show] do
    get :movies
    get :seasons
  end

  resources :movies do
    resources :options do
      resources :purchases
    end
  end

  resources :seasons do
    resources :options do
      resources :purchases
    end
  end

end
