class WelcomeController < ApplicationController
  before_filter :authenticate_user!
  def first_page
  end
end
