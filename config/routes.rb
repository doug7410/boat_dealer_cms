Rails.application.routes.draw do
  
  root to: "admin#index"
 
  devise_for :users

  get 'log_in', to: 'users/sessions#new'
  
  resources :boat_brands
  resources :boat_main_models
  resources :boats

  post 'activate_boat_brand/:id', to: "boat_brands#activate", as: :activate_boat_brand
  post 'deactivate_boat_brand/:id', to: "boat_brands#deactivate", as: :deactivate_boat_brand



  get 'ui(/:action)', controller: 'ui' 
end
