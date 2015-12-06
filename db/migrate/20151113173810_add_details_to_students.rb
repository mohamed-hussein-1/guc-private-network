class AddDetailsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :faculty, :string
    add_column :students, :major, :string
    add_column :students, :semester, :integer
    add_column :students, :guc_id, :string
  end
end
