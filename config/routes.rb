Rails.application.routes.draw do
  resources :products
  devise_for :users
  root to: "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

 # get 'home/index', to: 'home#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  get 'about', to: 'home#about', as: 'about'
  # Defines the root path route ("/")
  # root "posts#index"
end
