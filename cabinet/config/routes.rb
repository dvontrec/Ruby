Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  # create routes for actions adding to app
  resources :docs

  # if the user is authenticated
  authenticated :user do 
    root 'docs#index', as: 'authenticated_root'
  end

  # set the root route to be welcome controllers index action
  root 'welcome#index'
end
