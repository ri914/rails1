class UsersToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_table :users, :posts
    
  end
end
