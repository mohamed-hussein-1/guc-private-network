class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description,null: false
      t.string :name,null: false
      t.timestamps null: false
    end
  end
end