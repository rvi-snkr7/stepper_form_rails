Rails.application.routes.draw do
  root 'details#index'
  resources :details

  namespace :api do
    namespace :v1 do
      resources :details
    end
  end
end
