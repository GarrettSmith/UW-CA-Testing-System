class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_number
      t.integer :user_id

      t.timestamps
    end
  end
end
