class CreateUserCourses < ActiveRecord::Migration
  def change
    create_table :user_courses do |t|
    	t.column :user_id, :integer
    	t.column :course_id, :integer
    end
  end
end
