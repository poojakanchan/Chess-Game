class HomeController < ApplicationController
  before_filter :authenticate_user!
  def hello
   
  end
end
