Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :posts, only: [:index, :show, :new, :create, :destroy] do
    resources :comments, only: [:new, :create]
  end
end
