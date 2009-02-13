class Contact < ActiveRecord::Base
  
  validates_presence_of :email, :message => "Email is required."
  validates_presence_of :title, :message => "Title is required."
  validates_presence_of :content, :message => "Content is required."
  
end
