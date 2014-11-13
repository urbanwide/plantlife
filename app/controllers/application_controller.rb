class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_title
  
  protected
  def set_title
    @title = "Sunflower Growing"
  end
  
end
