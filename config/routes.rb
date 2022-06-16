Rails.application.routes.draw do
  root 'blog#index'
  get 'blogs' => 'blog#index', as: 'home'
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  get 'blogs/:id/edit' => 'blog#edit', as: 'edit_blog'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  patch 'blogs/:id' => 'blog#update'
  post 'blogs' => 'blog#create'
  delete 'blogs/:id' => 'blog#destroy', as: 'delete_blog'
end
