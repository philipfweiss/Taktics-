Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  get 'index' => 'users'
  get 'home' => 'static_pages#home'
  get 'first_tactic' => 'tactics#show'
  post 'login' => 'sessions#create'
  post 'toggle_timer' =>  'tactics#toggle_timer'
  delete 'logout' => 'sessions#destroy'


  root 'static_pages#home'
  resources :users
  resources :tactics
  resources :account_activations, only: [:edit]

end
