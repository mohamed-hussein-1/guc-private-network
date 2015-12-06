class AddingUsersTutorialRelation < ActiveRecord::Migration
  def change
  	create_table :user_tutorials do |t|
    	t.column :user_id, :integer
    	t.column :tutorial_id, :integer
    end
  end
end
