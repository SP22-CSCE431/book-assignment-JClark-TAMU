Rails.application.routes.draw do
  resources :userbooks
  resources :users
  resources :books do
    member do
      get :confirm
    end
  end
  
  root 'userbooks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
