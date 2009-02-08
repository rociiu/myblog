class Comment < ActiveRecord::Base

  belongs_to :parent, :class_name => 'Post', :polymorphic => true
  
end
