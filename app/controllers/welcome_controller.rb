class WelcomeController < ApplicationController
  skip_before_action :require_login
  skip_before_action :require_admin

  def index
  end

  def about
  end
end
