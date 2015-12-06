class AddUserIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :poster_id, :integer ,as: :user_id
    add_column :posts, :reciever_id, :integer , as: :user_id
  end
end
