class SiteController < ApplicationController
  
  def index
    @page_title = "rociiu | home"
  end
  
  def resume
    @page_title = "rociiu | resume"
  end
  
  def contact
    @page_title = "rociiu | contact"
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
