class SiteController < ApplicationController
  
  def index
    
  end
  
  def resume
    
  end
  
  def contact
    
  end
  
  def login
    if request.post?
      if params[:key] == KEY
        session[:user] = params[:key]
        flash[:notice] = "Login successfully."
        redirect_to '/'
      else
        flash[:notice] = "Are you roc?"
        session[:user] = nil
      end
    end
  end
  
  def logout
    session[:user] = nil
    flash[:notice] = "You are logged out."
    redirect_to '/'
  end
  
end
