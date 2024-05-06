Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  #localhost:3000/posts
  get 'posts/index', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  post 'posts/create', to:'posts#create'
  get 'posts/:id/edit', to: 'posts#edit'
  patch 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#destroy'
end
