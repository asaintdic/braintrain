Rails.application.routes.draw do
  resources :activities do
    resources :comments
  end
  
  resources :activities
  
  resources :brainwaves
  
  
 
  # get '/auth/facebook/callback' => 'sessions#create'
  root 'sessions#welcome'
 
  get '/login', to: 'sessions#new'
  get '/auth/facebook/callback', to: 'sessions#create'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
