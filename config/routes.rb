Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  concern :favoritable do |options|
    shallow do
      post '/favorite', { to: 'favorites#create', on: :member }.merge(options)
      delete '/favorite', { to: 'favorites#destroy', on: :member }.merge(options)
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :dashboard, only: :index
      resources :categories, only: :index
      resources :search, only: %i[index show]
      resources :albums, only: :show do
        resources :recently_heards, only: :create
        concerns :favoritable, favoritable_type: 'Album'
      end

      resources :songs, only: [] do
        concerns :favoritable, favoritable_type: 'Song'
      end

      resources :artists, only: [] do
        concerns :favoritable, favoritable_type: 'Artist'
      end
    end
  end

  get '*path', to: 'home#index', constaints: lambda{|req| req.path !~ /\.(png|jpg|js|css|json)$/}
end
