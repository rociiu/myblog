class SiteController < ApplicationController
  
  def index
    
  end
  
  def resume
    
  end
  
  def contact
    
  end
  
  def login
    
  end
  
  def logout
    session[:user] = nil
    flash[:notice] = "You are logged out."
    redirect_to '/'
  end
  
end
