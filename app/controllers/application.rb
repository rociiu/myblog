# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '714847224a056dea1a05cda112e69e29'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  layout 'default'
  
  before_filter :check_browser
  
  
  protected
    
    def check_browser
      if(request.env["HTTP_USER_AGENT"].starts_with? "IE")
        flash[:notice] = "Sorry I don't support IE because IE just sucks ."
      end
    end
    
    def login_required
      unless session[:user]
        flash[:notice] = "You must login to visit the page."
        redirect_to '/'
      end
    end
    
end
