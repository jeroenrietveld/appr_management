Appr::Application.routes.draw do
  root 'application#index'

  resources :tasks do
  end
end
