class AddAssociationsToStudentTest < ActiveRecord::Migration
  def change
    add_column :student_tests, :enrolled_student_id, :integer
    add_column :student_tests, :test_id, :integer
  end
end
