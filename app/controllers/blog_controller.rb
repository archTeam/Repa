class BlogController < ApplicationController
  def index
    @name = session[:name]
  end

  def example
    session[:name] = params[:name] if params[:name]
    redirect_to blog_url
  end

  def exit
    session[:name] = nil
    redirect_to blog_url
  end
end
