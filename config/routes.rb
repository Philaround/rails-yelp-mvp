Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create]
  end
end




  # get '/restaurants', to: 'restaurants#index'

  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/new', to: 'restaurants#new'

  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
