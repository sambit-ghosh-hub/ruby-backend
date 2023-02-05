Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user
  resources :login
  resources :logout
  resources :jobdetail
  resources :candidateapplication
  resources :jobsbystatus
  resources :jobstatuscount
  resources :candidateprofile
  resources :getappliedjobs
  resources :profilebyemail
end
