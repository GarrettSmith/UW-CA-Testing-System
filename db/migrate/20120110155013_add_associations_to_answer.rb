class AddAssociationsToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :student_test_id, :integer
    add_column :answers, :question_id, :integer
  end
end
