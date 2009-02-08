class AddParentTypeToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :parent_type, :string
  end

  def self.down
    remove_column :comments, :parent_type
  end
end
