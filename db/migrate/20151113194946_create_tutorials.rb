class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.integer :semester, :null => false
      t.string :faculty, null: false
      t.integer :number,null: false
      t.string :major
      t.timestamps null: false
    end
  end
end