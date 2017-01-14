class TopicsController < ApplicationController
  def index
    @topics = Topic.includes(:issues).all
  end

  def show
  end
end
