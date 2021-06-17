Rails.application.routes.draw do
  #make a welcome page
  resources :users 

  resources :flights
  
  resources :airlines do
   resources :flights
  end 

 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
