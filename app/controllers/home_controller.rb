class HomeController < ApplicationController
  def show
    @topics = Topic.joins(:issues).where("issues.expires_at > ?", DateTime.current).uniq
    @title = "The Sting"
  end
end