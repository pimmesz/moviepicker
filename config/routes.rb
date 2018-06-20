Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  get 'pages/contact'
  get 'pages/about'
  root :to => "movies#index"
end
