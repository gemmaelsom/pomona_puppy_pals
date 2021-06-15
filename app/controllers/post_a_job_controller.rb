class PostAJobController < ApplicationController
  def create

    @post = Post.new(post_params)

# Testing
    puts "hello down"
    puts current_user.id
    puts "hello up"
    puts current_user.dog.id

    post = Post.new(post_params)
    post.user_id = current_user.id
    post.dog_id = current_user.dog.id
    
 #Redirect to original Post a job page if form did not save
    if post.save
      post.save!
      redirect_to '/search_walkers/show'
    else
      flash.now[:errors] = @post.errors.full_messages
      redirect_to '/post_a_job/new'
    end

  end

  def new
    @job = Post.new
  end

  def index
    @jobs = Post.all
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
  end

  def destroy
    @jobs.destroy
    redirect_to home_index_path
  end

  private
  def post_params
    params.permit(:payment, :start_time, :duration, :description, :personality, :job_photo, :edit, :destroy)
  end

end
