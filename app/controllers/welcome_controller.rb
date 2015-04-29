class WelcomeController < ApplicationController
  def index
    @top5=Mort.top_10_libre
  end
end
