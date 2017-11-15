Rails.application.routes.draw do



  resources :vacancies
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/log_in' => 'devise/sessions#new'
    get '/log_out' => 'devise/sessions#destroy'
    get '/sign_up' => 'devise/registrations#new'
    get '/edit_profile' => 'devise/registrations#edit'

  end
  # get 'persons/profile', as: 'user_root'
  get 'pages/contact'

  resources :users, :only => [:new, :create, :show]
  get 'users/new' => 'users#new'
  post 'users/' => 'users#create'
  post 'users/:first_name' => 'users#show'

  get 'pages/home'
  get 'persons/profile', as: 'user_root'
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
