class Post < ActiveRecord::Base

  named_scope :displays, :conditions => { :display => true }
  has_many :comments, :class_name => 'Comment', :foreign_key => 'parent_id'
  
  
  def next_post
    Post.find(:first, :conditions => ["id > ? and display=?", self.id, true])
  end
  
  def prev_post
    Post.find(:first, :conditions => ["id < ? and display=?", self.id, true])
  end
  
end
