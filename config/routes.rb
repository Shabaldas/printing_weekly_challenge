Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
  resources :juries
  resources :challenges
  resources :participates

  namespace :admin do
    get '/', to: 'dashboard#index', as: :dashboard
  end

  namespace :challange_juries do
    get '/', to: 'dashboard#index', as: :dashboard
  end
end
