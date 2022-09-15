Rails.application.routes.draw do
  root 'api/prominent#index'
  resources :member

  namespace :api do
    # resources :prominent
      post '/detail/prominent', to: "prominent#create"
  end
end
