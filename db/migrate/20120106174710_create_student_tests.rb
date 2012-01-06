class CreateStudentTests < ActiveRecord::Migration
  def change
    create_table :student_tests do |t|
      t.datetime :time_started
      t.datetime :time_submitted

      t.timestamps
    end
  end
end
