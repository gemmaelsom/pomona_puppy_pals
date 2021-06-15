class PostAJobController < ApplicationController
  def create

    @post = Post.new(post_params)

    # payment = params[:payment]
    # start_time = params[:start_time]
    # duration = params[:duration]
    # description = params[:description]
    # personality = params[:personality]


    puts "hello down"
    puts current_user.id
    puts "hello up"
    puts current_user.dog.id

    post = Post.new(post_params)
    post.user_id = current_user.id
    post.dog_id = current_user.dog.id
    post.save

    redirect_to '/search_walkers/show'
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
