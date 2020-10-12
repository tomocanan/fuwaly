Rails.application.routes.draw do
  devise_for :users
  get 'statuses/index'
  root to: "statuses#index"

  resources :statuses do
    collection do
      get 'looksl'
      get 'lookhp'
    end
  end
end
