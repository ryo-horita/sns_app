Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Root path
  get '/', to: 'posts#index', as: 'index_post'

  # PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts/new', to: 'posts#create', as: 'create_post'
  get 'posts/edit/:id', to: 'posts#edit', as: 'edit_post'
  post 'posts/edit/:id', to: 'posts#update', as: 'update_post'
  delete 'posts/destroy/:id', to: 'posts#destroy', as: 'destroy_post'

  # CommentsController
  get 'posts/show/:post_id/comments/new', to: 'comments#new', as: 'new_comment'
  post 'posts/show/:post_id/comments/new', to: 'comments#create', as: 'create_comment'

  # TopicsController
  get 'topics/new', to: 'topics#new', as: 'new_topic'
  post '/topics/create', to: 'topics#create', as: 'create_topic'
  get 'topics/edit', to: 'topics#edit', as: 'edit_topic'
  post '/topics/update', to: 'topics#update', as: 'update_topic'
end
