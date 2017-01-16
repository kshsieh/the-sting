class AdminController < ApplicationController
  layout "admin"

  before_action :authenticate_admin

  private

  # TODO: users have roles, duh
  def authenticate_admin
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      username == 'stingadmin' && password == 'finley'
    end
  end
end
