Rails.application.routes.draw do
  get 'about/about'
  get 'job_search/search'
  get 'profile/show'
  get 'search_jobs/search'
  get 'post_a_job/post'
  get 'register_your_dog/create'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
