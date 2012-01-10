class AddAssociationIdsToSection < ActiveRecord::Migration
  def change
    add_column :sections, :professor_id, :integer
    add_column :sections, :course_id, :integer
    add_column :sections, :semester_id, :integer
  end
end
