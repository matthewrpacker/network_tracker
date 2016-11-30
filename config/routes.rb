Rails.application.routes.draw do
  root to: "home#show"

  delete '/logout', to: 'sessions#destroy'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users, only: [:new, :create] do
    resources :contacts, only: [:index, :create, :update, :edit]
  end

  namespace :api do
    namespace :v1 do
      resources :months, only: [:update]
    end
  end
end
