Rails.application.routes.draw do
  resources :comments
  root to: 'homepage#index'
  resources :posts
  get "posts/:id/tags",to: "posts#tags", as: :tag_post 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end