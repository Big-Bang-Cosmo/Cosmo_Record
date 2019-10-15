Rails.application.routes.draw do
<<<<<<< HEAD

  namespace :user do
    get 'reviews/item_reviews'
    get 'reviews/:id/edit' => 'reviews#edit'
    get 'reviews/:id/update' => 'reviews#update'
  end
  namespace :admin do
    get 'reviews/index'
    get 'reviews/:id/edit' => 'reviews#edit'
    get 'reviews/user_reviews'
  end
  get 'genres/genre_items'
  get 'artists/artist_items'
  namespace :user do
    get 'genres/genres_items'
  end
  namespace :user do
    get 'artists/artists_items'
  end
  namespace :admin do
  	get 'items/new'
  	get 'items/add_item_info'
    get 'items/index'
    post 'items/create'
    get 'items/:id/edit' => 'items#edit', as: 'item_edit'
    patch 'items/:id/update' => 'items#update'
    delete 'items/:id/destroy' => 'items#destroy', as: 'item_destroy'
    get 'items/:id/search' => 'items#search'
    get 'items/:id' => 'items#show'
    get 'artists/new'
    post 'artists/create' => 'artists#create'
    get 'labels/new' 
    post 'labels/create' => 'labels#create'
    get 'genres/new'
    post 'genres/create' => 'genres#create'
  end
  namespace :user do
    get 'items/:id/show' => 'items#show'
    get 'items/:id/search' => 'items#search' 
  end
  devise_for :users
  scope :user do
  	resources :items
  end
  
 scope :admin do
 	# resources :items 
    # resources :reviews, only: [:create, :edit, :update, :destroy]

=======
 namespace :user do
   get 'reviews/item_reviews'
   get 'reviews/:id/edit' => 'reviews#edit'
   get 'reviews/:id/update' => 'reviews#update'
>>>>>>> 5494e59e9bdbe4c0d719df93d0ca6750770b6587
 end
 namespace :admin do
   get 'reviews/index'
   get 'reviews/:id/edit' => 'reviews#edit'
   get 'reviews/user_reviews'
 end
 get 'genres/genre_items'
 get 'artists/artist_items'
 namespace :user do
   get 'genres/genres_items'
 end
 namespace :user do
   get 'artists/artists_items'
 end
 namespace :admin do
     get 'items/new'
     get 'items/add_item_info'
   get 'items/index'
   post 'items/create'
   get 'items/:id/edit' => 'items#edit', as: 'item_edit'
   patch 'items/:id/update' => 'items#update'
   delete 'items/:id/destroy' => 'items#destroy', as: 'item_destroy'
   get 'items/:id/search' => 'items#search'
   get 'items/:id' => 'items#show'
   get 'artists/new'
   post 'artists/create' => 'artists#create'
   get 'labels/new'
   post 'labels/create' => 'labels#create'
   get 'genres/new'
   post 'genres/create' => 'genres#create'
 end
 namespace :user do
   get 'items/:id/show' => 'items#show'
   get 'items/:id/search' => 'items#search'
 end
 devise_for :users
 scope :user do
     resources :items
 end
scope :admin do
    # resources :items
   # resources :reviews, only: [:create, :edit, :update, :destroy]
end
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end