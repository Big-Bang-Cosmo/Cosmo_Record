Rails.application.routes.draw do

  get 'genres/genre_items'
  get 'artists/artist_item'
  namespace :user do
    get 'genres/genres_items'
  end
  namespace :user do
    get 'artists/artists_item'
  end
  namespace :admin do
    get 'items/index'
    get 'items/create'
    get 'items/edit'
    get 'items/show'
    get 'items/update'
    get 'items/destroy'
    get 'items/search'
  end
  namespace :user do
    
    get 'items/show'
    get 'items/search'
  end
  devise_for :users
  scope :user do
  	resources :items
  end
  
 scope :admin do
 	resources :items
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
