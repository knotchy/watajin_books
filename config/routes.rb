Rails.application.routes.draw do
  root 'books#index'
  resources :books do
    resources :reviews,except: [:show]
  end
  resources :authors,only: [:index,:create,:edit]
  resources :publishers,only: [:index,:create,:edit]
  resources :series,only: [:index,:create,:edit]
end
