class BlogController < ApplicationController

  def index
    @recent_posts = Post.last(4)
  end

end
