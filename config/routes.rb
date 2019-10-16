Rails.application.routes.draw do
devise_for :users
 namespace :user do
   get ‘user/new’
   get ‘user/edit’
   get ‘user/favorites’
 end
 namespace :admin do
   get ‘user/index’
   get ‘user/edit’
 end
 namespace :admin do
   get ‘home/top’
 end
 namespace :user do
   get ‘contacts/new’
 end
 namespace :admin do
   get ‘contacts/index’
   get ‘contacts/show’
 end
 devise_for :admins, controllers: {
 sessions:      ‘admins/sessions’,
 passwords:     ‘admins/passwords’,
 registrations: ‘admins/registrations’
}
devise_for :users, controllers: {
 sessions:      ‘users/sessions’,
 passwords:     ‘users/passwords’,
 registrations: ‘users/registrations’
}
namespace :user do
  resources :items
  resources :cart_item
  get ‘reviews/item_reviews’
  get ‘reviews/:id/edit’ => ‘reviews#edit’
  get ‘reviews/:id/update’ => ‘reviews#update’
  get ‘genres/genres_items’
  get ‘artists/artists_items’
  get ‘items/:id/show’ => ‘items#show’
  get ‘items/:id/search’ => ‘items#search’
end
namespace :admin do
 resources :items
  get ‘artists/new’
  post ‘artists/create’ => ‘artists#create’
  get ‘labels/new’
  post ‘labels/create’ => ‘labels#create’
  get ‘genres/new’
  post ‘genres/create’ => ‘genres#create’
  get ‘reviews/index’
  get ‘reviews/:id/edit’ => ‘reviews#edit’
  get ‘reviews/user_reviews’
end
end



