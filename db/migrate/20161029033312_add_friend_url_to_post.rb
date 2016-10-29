class AddFriendUrlToPost < ActiveRecord::Migration
  def change
    add_column :posts, :friend_url, :string
  end
end
