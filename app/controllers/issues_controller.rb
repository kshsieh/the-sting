class IssuesController < ApplicationController
  before_action :load_issue, only: [:show]
  before_action :load_topic, only: [:index]

  def show
  end

  def index

  end

  private

  def load_issue
    @issue = Issue.find(params[:id])
    @title = @issue.topic.name
  end

  def load_topic
    @topic = Topic.find(params[:topic_id])
    @title = @topic.name
  end
end
