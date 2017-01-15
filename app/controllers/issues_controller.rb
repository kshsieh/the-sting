class IssuesController < ApplicationController
  before_action :load_issue

  def show
    @title = @issue.topic.name
  end

  private

  def load_issue
    @issue = Issue.find(params[:id])
  end
end
