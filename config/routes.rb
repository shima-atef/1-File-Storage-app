Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root "docs#index",as: "authenticated_root"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root"welcome#index"
  resources :docs

  # Defines the root path route ("/")
  # root "articles#index"
end
