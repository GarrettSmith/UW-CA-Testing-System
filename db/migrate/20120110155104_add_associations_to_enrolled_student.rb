class AddAssociationsToEnrolledStudent < ActiveRecord::Migration
  def change
    add_column :enrolled_students, :student_id, :integer
    add_column :enrolled_students, :section_id, :integer
  end
end
