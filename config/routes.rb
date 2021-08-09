Rails.application.routes.draw do
  devise_for :users
  resources :comments
  root to: 'homepage#index'
  resources :posts
  get "posts/:id/tags",to: "posts#tags", as: :tag_post 
  post "posts/:id/tags",to: "tags#add"
  post "posts/:id/tagsremove",to: "tags#remove", as: :remove_tag
  get "/tags/:id",to: "tags#show", as: :show_tag
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end