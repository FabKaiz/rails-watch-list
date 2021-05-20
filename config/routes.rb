Rails.application.routes.draw do
  # get 'bookmarks/create'
  # get 'bookmarks/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :lists, only: [:index, :new, :create, :show] do 
  #   resources :bookmarks do
  #     resources :movies
  #   end
  # end
  # resources :bookmarks do
  #   resources :movies
  # end
  root to: 'lists#index'

  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
