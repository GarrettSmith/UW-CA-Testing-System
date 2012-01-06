class CreateEnrolledStudents < ActiveRecord::Migration
  def change
    create_table :enrolled_students do |t|

      t.timestamps
    end
  end
end
