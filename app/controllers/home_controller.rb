class HomeController < ApplicationController
  def show
    @topics = Topic.includes(:issues).all
    @title = "The Sting"
  end
end