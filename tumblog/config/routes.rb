Rails.application.routes.draw do
  # allows application to use post routes
  resources :posts do
    # sets comments routes within posts
    resources :comments
  end
  # makes the root the posts controller's index actino
  root "posts#index"

  # creates one route /about performs the Pages about actoion
  get '/about', to: 'pages#about'
end
