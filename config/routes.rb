Rails.application.routes.draw do
  root 'sessions#welcome'
  
  resources :user

  resources :activities
  
  resources :brainwave
  
  
 
  get '/auth/facebook/callback' => 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
