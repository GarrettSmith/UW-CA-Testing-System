class AddStudentAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :student_number, :integer
  end
end
