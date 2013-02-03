class HomeController < ApplicationController
  layout :home_layout
  def index
    @questions = Question.all
  end
  
  private
    def home_layout
      user_signed_in? ? "application" : "splash"
    end
end
