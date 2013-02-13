class HomeController < ApplicationController
  layout :home_layout
  def index
    @user ||= current_user
    if params[:tag]
      @questions = Question.tagged_with(params[:tag]).order('created_at DESC').all
    else
      @questions = Question.order('created_at DESC').all
    end
  end
  
  private
    def home_layout
      user_signed_in? ? "application" : "splash"
    end
end
