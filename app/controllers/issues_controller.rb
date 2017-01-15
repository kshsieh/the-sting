class IssuesController < ApplicationController
  before_action :load_issue
  before_action :set_title

  def show
  end

  private

  def load_issue
    @issue = Issue.find(params[:id])
  end

  def set_title
    @title = @issue.topic.name
  end
end
