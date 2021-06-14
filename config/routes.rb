Rails.application.routes.draw do
  get 'search_walkers/show'
  get 'about/about'
  get 'job_search/search'
  get 'profile/show'
  get 'search_jobs/search'
  get 'post_a_job/post'
  get 'register_your_dog/create', to: 'register_your_dog#show'
  get 'home/index'
  post 'register_your_dog/create', to: 'register_your_dog#create'
  post 'post_a_job/post', to: 'post_a_job#post'
  get 'post_a_job/new', to: 'post_a_job#new'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
