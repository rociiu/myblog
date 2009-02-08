class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :parent_id
      t.string :title
      t.string :comment
      t.string :email
      t.string :site
      t.string :nickname

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
