Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/about'
  resources :searches
  root :to => "searches#index"
end
