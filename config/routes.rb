Finaldo::Application.routes.draw do

  get "users/show"

  resources :portfolios do
    resources :instruments
  end

  devise_for :users
  
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
  root :to => 'portfolios#index'
  get 'about' => 'pages#about'


end
