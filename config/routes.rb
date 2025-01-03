Rails.application.routes.draw do
  # Define your application es per the DSL in https://guides.rubyonrails.org/ing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check 
  
  root "products#index"

  # get 'products/login', to: 'products#login', as: 'products_login'

  resources :products 
  
  post 'products/login', to: 'products#login', as: 'products_login' 

  resources :costomers 

  resources :books










  # get "/products" , to: "products#index"

  # post "/products", to: "products#create"
  # get "/products/:id", to: "products#show"

   
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path e ("/")
  # root "posts#index"
end
