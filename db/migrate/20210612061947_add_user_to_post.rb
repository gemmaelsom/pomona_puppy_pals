class AddUserToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :walker, null: false, foreign_key: { to_table: :users }
    add_reference :posts, :poster, null: false, foreign_key: { to_table: :users }
  end
end
