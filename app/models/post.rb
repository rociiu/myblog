class Post < ActiveRecord::Base

  has_many :comments
  
  def to_params
    id.to_s + "a"
  end
  
end
