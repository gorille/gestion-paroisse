class WelcomeController < ApplicationController
  def index
    @top5=Mort.top5_oldest
  end
end
