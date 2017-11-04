class StaticPagesController < ApplicationController

  def home
    @recent_post = Post.last
    binding.pry
  end

end
