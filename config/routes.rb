Rails.application.routes.draw do
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end
  namespace :admin do
    resources :restaurants, only: %i[edit update destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
end
