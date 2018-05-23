class HomeController < ApplicationController
  before_action :require_login
  def index
  	@tweet = Tweet.new
  end
end
