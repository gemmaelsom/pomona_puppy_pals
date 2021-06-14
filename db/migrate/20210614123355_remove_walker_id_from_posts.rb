class RemoveWalkerIdFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :walker_id
  end
end
