class JobSearchController < ApplicationController
  def search
    @posts = Post.all
  end

  def show
  end
end
