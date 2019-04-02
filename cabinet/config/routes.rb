Rails.application.routes.draw do
  get 'welcome/index'
  # set the root route to be welcoe controllers index action
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
