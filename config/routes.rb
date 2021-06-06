Rails.application.routes.draw do
  
  resources :users 
  
  resources :airlines do
   resources :flights, only: [:index, :new, :create]
  end 

  resources :flights
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
