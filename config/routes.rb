Rails.application.routes.draw do
  resources :meetings
  devise_for :users
  get 'statuses/index'
  root to: "statuses#index"

  resources :statuses do
    collection do
      get 'looksl'
      get 'lookhp'
      get 'looktk'
    end
  end
end
