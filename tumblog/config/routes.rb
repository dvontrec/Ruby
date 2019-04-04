Rails.application.routes.draw do
  # allows application to use post routes
  resources :posts
  # makes the root the posts controller's index actino
  root "posts#index"
end
