class PostAJobController < ApplicationController
  def create

    @post = Post.new(post_params)


    puts "hello down"
    puts current_user.id
    puts "hello up"
    puts current_user.dog.id

    post = Post.new(post_params)
    post.user_id = current_user.id
    post.dog_id = current_user.dog.id

    if post.save
    then redirect_to '/search_walkers/show'
    else puts redirect_to '/post_a_job/new'
    end

  end

  def new
    @job = Post.new
  end

  def index
    @jobs = Post.all
  end

  private

  def post_params
    params.permit(:payment, :start_time, :duration, :description, :personality, :job_photo)
  end
end
