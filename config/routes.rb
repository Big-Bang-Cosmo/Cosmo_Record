
Rails.application.routes.draw do
  namespace :user do
    get '/' => "items#index"
    get 'items/search' => 'items#search', as:'item_search'

    get 'users/:id/favorites' => 'users#favorites', as:'users_favorites'
    get 'users/:user_id/cart_items' => 'cart_items#user_cart_item_list', as:'user_cart_item_list'
    get 'users/:id/unsubscribe' => 'users#unsubscribe', as:'user_unsubscribe'
    get 'users/:id/user_reviews' => 'users#user_reviews', as: 'user_reviews'

    get 'orders/:id/new' => 'orders#new', as: 'orders_new'
    get 'orders/:id/bought_items' => 'orders#bought_items', as: 'bought_items'
    get 'orders/:id/day_bought_items' => 'orders#day_bought_items', as: 'day_bought_items'

    get 'orders/order_completed' => 'orders#order_completed', as:'order_completed'
    get 'contacts/:user_id/contact_completed' => 'contacts#contact_completed', as: 'contact_completed'
    get 'users/user_destroy_completed' => 'users#user_destroy_completed', as: 'user_destroy_completed'

    resources :cart_items, only: [:create, :update, :destroy]
    resources :contacts, only: [:new, :create]
    resources :artists, only: [:show]
    resources :genres, only: [:show]
    resources :deliveries
    resources :users, only: [:new, :edit]
    resources :orders, only: [:index, :create, :show]
    resources :order_items, only: [:create]

    resources :items, only: [:index, :show] do
      resource :favorites, only: [:create, :destroy]
      resources :reviews, only: [:create, :edit, :update, :destroy]
    end
  end


  namespace :admin do
    get 'home/top'
    get 'items/search' => 'items#search', as: 'item_search'
    get 'arrivals/index' => 'arrivals#index'
    get 'users/:id/user_reviews' => 'users#user_reviews', as: 'user_reviews'
    get 'orders/:id/bought_items' => 'orders#bought_items', as: 'bought_items'
    get 'orders/:id/day_bought_items' => 'orders#day_bought_items', as: 'day_bought_items'

    resources :contacts, only: [:index, :show, :update]
    resources :artists, only: [:new, :create]
    resources :labels, only: [:new, :create]
    resources :genres, only: [:new, :create]
    resources :deliveries, only: [:index, :show, :edit, :update, :destroy]
    resources :orders, only: [:index, :show, :update]
    resources :users, only: [:index,:show,:edit, :update, :destroy]

    resources :items do
      resources :arrivals, only: [:new, :create, :edit, :update, :destroy]
      resources :reviews, only: [:create, :edit, :update, :destroy]
    end
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

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


