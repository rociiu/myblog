class Post < ActiveRecord::Base
  
      
  has_many :comments, :class_name => 'Comment', :foreign_key => 'parent_id'
  
  
  def next_post
    Post.find(:first, :conditions => ["id < ? and display=?", self.id, true])
  end
  
  def prev_post
    Post.find(:first, :conditions => ["id > ? and display=?", self.id, true])
  end
  
  def self.newest_post
    self.find(:all, :conditions => { :display => true }, :order => "created_at DESC")
  end
  
end
