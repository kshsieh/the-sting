class Admin::TopicsController < AdminController
  def index
    @topics = Topic.all
  end

  def new
  end
end
