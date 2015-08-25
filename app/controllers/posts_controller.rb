class PostsController < ApplicationController
  def index
    @posts = Post.all_with_censored
  end

  def show
  end

  def new
  end

  def edit
  end
end
