Appr::Application.routes.draw do
  devise_for :users
  resources :sprints

  root 'application#index'

  resources :tasks do
  end
end
