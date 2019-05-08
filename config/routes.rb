Rails.application.routes.draw do
  
  root 'photos#index'

  devise_for :buyers
  devise_for :sellers, :controllers => { registrations: 'registrations' }

  get "/orders", to: "orders#create", as: "create_order"
  
  get "sellers/:id", to: "seller_page#index", as: "seller_page" 
  get "sellers/:id/new", to: "photos#new", as: "seller_new_photo"

  get "/photos", to: "photos#index", as: "photos"
  post "/photos", to: "photos#create"
  get "/photos/new", to: "photos#new", as: "new_photo"
  get "/photos/:id", to: "photos#show", as: "photo"
  put "/photos/:id", to: "photos#update"
  patch "/photos/:id", to: "photos#update"
  get "/photos/:id/edit", to: "photos#edit", as: "edit_photo"
  delete "/photos/:id", to: "photos#destroy", as: "delete_photo"

  get "/join", to: "join#index", as: "join"

  get "/search", to: "pages#search", as: "search_page"

  resources :line_items

  resources :charges

  resources :orders, except: [:create]


  

end
