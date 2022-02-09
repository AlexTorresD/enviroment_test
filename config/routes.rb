Rails.application.routes.draw do
  resources :user_books
  resources :users
  resources :books do
    member do
      get :delete
    end
  end
  root 'books#index'
  get '/users/:id', to: 'users#show'
  get '/user_books/:id', to: 'user_books#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
