Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, except: :destroy
  end
  resources :bookmarks, only: :destroy
  # get 'lists/:id/edit', to: 'lists#edit'
  # delete 'lists/:id/bookmarks/:id', to: 'bookmarks#destroy'
end
