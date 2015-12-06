class AddForeignkeyToComments < ActiveRecord::Migration
  def change
    add_column :comments, :course_id, :integer
    add_column :comments, :tutorial_id, :integer
  end
end
