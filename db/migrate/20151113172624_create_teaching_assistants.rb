class CreateTeachingAssistants < ActiveRecord::Migration
  def change
    create_table :teaching_assistants do |t|

      t.timestamps null: false
    end
  end
end
