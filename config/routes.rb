Rails.application.routes.draw do

  namespace :user do
    get 'orders/bought_items'
    get 'orders/day_bought_items'
  end
  namespace :admin do
    get 'orders/index'
    get 'orders/bought_items'
    get 'orders/day_bought_items'
  end
  namespace :user do
    get 'user/new'
    get 'user/edit'
  end
  namespace :admin do
    get 'user/index'
    get 'user/edit'
    get 'user/:id/delivery_index' => 'user#delivery_index'
  end
  namespace :admin do
    get 'home/top'
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

   resources :cart_items, only: [:create, :update, :destroy]
   # get 'cart_items' => 'cart_items#user_cart_items'
   get 'reviews/item_reviews'
   get 'genres/genres_items'
   get 'artists/artists_items'
   get ':id/favorites' => 'user#favorites'
   # get 'items/:id/search' => 'items#search'

   resources :order_items,only: [:show, :create, :edit, :update, :destroy]
   resources :orders

  get 'items/search' => 'items#search', as: 'item_search'
  get 'items/:id/show' => 'items#show',as: 'item_show'

  resources :items do
    resource :favorites, only: [:create, :destroy]
    resource :reviews, only: [:create, :edit, :update, :destroy]
  end
  resources :artists, only: [:show]

  resources :genres, only: [:show]
  resources :contacts, only: [:new, :create]
  resources :cart_item

  get 'reviews/item_reviews'
  get 'reviews/:id/edit' => 'reviews#edit'
  get 'reviews/:id/update' => 'reviews#update'

  # get 'items/:id/search' => 'items#search'

end

post '/user/items/:item_id/reviews' => 'reviews#create', as: 'create_review'
get '/user/:user_id/cart_items' => 'user/cart_items#user_cart_item_list', as:'user_cart_item_list'

 namespace :admin do
  resources :items do
   resources :arrivals,only: [:new, :create, :edit, :update, :destroy]
  end
   resources :contacts, only: [:index, :show, :update]
   get 'arrivals/index' => 'arrivals#index'
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


