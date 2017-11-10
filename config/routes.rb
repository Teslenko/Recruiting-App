Rails.application.routes.draw do

  get 'pages/contact'

  get 'pages/home'

  get 'pages/contact'
  get 'users/new'
  get '/about' => 'pages#about'

  get :search, controller: :search

  # post :search, controller: :search

  get '/help' => 'pages#help'
  get '/contact'=> 'pages#contact'
  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  # get '/search'

  resources :articles do
    resources :comments
  end



  end
