Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users

  # get '/users', to: 'users#index'
  # get '/users/:id', to: 'users#show'
  # post '/users', to: 'users#create'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'
  # get '/users/new', to: 'users#new', as: 'new_users'
  # get '/users/:id/edit', to: 'users#edit'

  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :artworks, only: [:index, :show, :create, :update, :destroy]
  resources :artworkshares, only: [:create, :destroy]

end
