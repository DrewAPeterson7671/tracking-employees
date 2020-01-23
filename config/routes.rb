Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  # resources :users
  root to: 'divisions#index'
  resources :divisions do
    resources :employees
  end
  resources :projects do
    resources :employees
  end
  resources :employees do
    resources :projects
  end

end
