class StaticPagesController < ApplicationController

  def home
    @recent_post = Post.last
  end

end
