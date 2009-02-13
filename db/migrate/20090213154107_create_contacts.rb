class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :email
      t.string :site
      t.text :content
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
