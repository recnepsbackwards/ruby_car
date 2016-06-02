class CarController < ApplicationController
  #makes the welcome method to display the landing page
  def welcome
    render 'welcome.html.erb'
  end
end
