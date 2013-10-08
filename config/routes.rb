Finaldo::Application.routes.draw do


  get "users/show"

  resources :portfolios do
    resources :instruments
  end

  devise_for :users
  root :to => 'portfolios#index'
  get 'about' => 'pages#about'


end
