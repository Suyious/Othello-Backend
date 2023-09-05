Rails.application.routes.draw do
  resources :boards do
    resources :lists, only: [:index, :create]
  end
  
  resources :lists, only: [:update, :destroy]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
