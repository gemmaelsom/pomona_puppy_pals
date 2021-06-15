Rails.application.routes.draw do
  get 'search_walkers/show'
  get 'about/about'
  get 'post_a_job/index', to: 'post_a_job#index'
  get 'profile/show'
  get 'search_jobs/search', to: 'post_a_job#search'
  get 'post_a_job/post'
  get 'register_your_dog/create', to: 'register_your_dog#show'
  get 'home/index'
  post 'register_your_dog/create', to: 'register_your_dog#create'
  post 'post_a_job/new', to: 'post_a_job#create'
  get 'post_a_job/new', to: 'post_a_job#new'
  get 'post_a_job/:id/edit', to: 'post_a_job#edit', as: "edit_post"
  post 'post_a_job/:id', to: 'post_a_job#update'
  # delete 'post_a_job/:id', to: 'post_a_job#destroy', as: "delete_post"
  delete 'post_a_job/:id', to: 'post_a_job#update'
  get 'post_a_job/:id', to: 'post_a_job#update'
  delete 'post_a_job/update/:id', to: 'post_a_job#destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
