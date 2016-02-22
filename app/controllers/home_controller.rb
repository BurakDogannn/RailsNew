class HomeController < ApplicationController
  

  def home
    @authors =Author.all
    @articles =Article.all
    @categories =Category.all
    @authorprofile =AuthorProfile.all

  end




end
