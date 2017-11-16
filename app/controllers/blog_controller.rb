class BlogController < ApplicationController

  def index
    @recent_posts = Post.last(4)
    @all_posts = Post.all
  end

end
