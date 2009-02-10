# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def custom_date(date=DateTime.now)
    str = """
      <div class='date'>
        <div class='year'>
          #{date.strftime("%Y")}
        </div>
        <div class='day'>
          #{date.strftime("%d")}
        </div>
        <div class='month'>
          #{date.strftime("%b")}
        </div>   
      </div>
    """
  end
  
  def logged_in?
    !session[:user].nil?
  end
  
  
end
