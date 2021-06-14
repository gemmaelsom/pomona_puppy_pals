class PostAJobController < ApplicationController
  def post

    @post = Post.new

    payment = params[:payment]
    start_time = params[:start_time]
    duration = params[:duration]
    description = params[:description]
    personality = params[:personality]


    puts "hello down"
    puts current_user.id
    puts "hello up"
    puts current_user.dog.id


    post = Post.create(payment: payment, start_time: start_time, duration: duration, description: description, personality: personality, poster_id: current_user.id, walker_id: current_user.id, dog_id: current_user.dog.id)

    redirect_to '/search_walkers/show'
  end

  def new
  end 
end
