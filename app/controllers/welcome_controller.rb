class WelcomeController < ApplicationController
  def index
    @posts = Post.last(5)
    @comments = Comment.last(5)


  end


  def about
  end

end
