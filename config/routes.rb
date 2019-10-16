Rails.application.routes.draw do

  namespace :user do
    get 'user/new'
    get 'user/edit'
    get 'user/favorites'
  end
  namespace :admin do
    get 'user/index'
    get 'user/edit'
  end
  namespace :admin do
    get 'home/top'
  end
  namespace :user do
    get 'contacts/new'
  end
  namespace :admin do
    get 'contacts/index'
    get 'contacts/show'
  end
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

 namespace :user do
   resources :items
   resources :cart_item
   get 'reviews/item_reviews'
   get 'reviews/:id/edit' => 'reviews#edit'
   get 'reviews/:id/update' => 'reviews#update'
   get 'genres/genres_items'
   get 'artists/artists_items'
   get 'items/:id/show' => 'items#show'
   get 'items/:id/search' => 'items#search'

 end
 

namespace :admin do
   resources :items
   get 'artists/new'
   post 'artists/create' => 'artists#create'
   get 'labels/new'
   post 'labels/create' => 'labels#create'
   get 'genres/new'
   post 'genres/create' => 'genres#create'
   get 'reviews/index'
   get 'reviews/:id/edit' => 'reviews#edit'
   get 'reviews/user_reviews'
end


# get 'genres/genre_items'
# get 'artists/artist_items'


   #   get 'items/new'
   #   get 'items/add_item_info'
   # get 'items/index'
   # post 'items/create'
   # get 'items/:id/edit' => 'items#edit', as: 'item_edit'
   # patch 'items/:id/update' => 'items#update'
   # delete 'items/:id/destroy' => 'items#destroy', as: 'item_destroy'
   # get 'items/:id/search' => 'items#search'
   # get 'items/:id' => 'items#show'

# scope :admin do
#   resources :items
#     resources :reviews, only: [:create, :edit, :update, :destroy]
# end
    # resources :items
   # resources :reviews, only: [:create, :edit, :update, :destroy]
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

