class WelcomeController < ApplicationController
  def index
    @top5=Mort.top_oldest(10)
  end
end
