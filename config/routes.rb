Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  resources :users, except: %i[index]
  resources :articles, except: %i[index] do
    resources :votes, only: %i[create destroy]
  end
end
