class ScriptsController < ApplicationController
  before_action :load_script
  before_action :set_title

  def show
  end

  private

  def load_script
    @script = Script.find(params[:id])
  end

  def set_title
    @title = @script.issue.topic.name
  end
end
