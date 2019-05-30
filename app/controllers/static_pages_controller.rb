class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def search
    @movie_name = params[:search].downcase
    render 'home'
  end

  def about
  end
  
  def contact
  end

end
