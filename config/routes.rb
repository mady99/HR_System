Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'main/index'
  resources :goals
  resources :divisions
  resources :teams
  resources :employees
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root :to=> "main#index"
  # root "articles#index"
end
