class HomeController < ApplicationController
  def show
    @topics = Topic.includes(:issues).all
  end
end