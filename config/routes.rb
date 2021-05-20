Rails.application.routes.draw do
  # get 'bookmarks/create'
  # get 'bookmarks/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :new, :create, :show] do 
    resources :bookmarks do
      resources :movies
    end
  end

  root to: 'lists#index'
end
