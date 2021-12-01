class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @top5=Mort.top_10_libre
  end
end
