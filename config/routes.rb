Rails.application.routes.draw do
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
