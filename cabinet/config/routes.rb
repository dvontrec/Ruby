Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # set the root route to be welcoe controllers index action
  root 'welcome#index'

  # create routes for actions adding to app
  resources :docs

end
