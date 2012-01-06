class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.float :earned_marks
      t.float :time_taken
      t.datetime :time_submitted

      t.timestamps
    end
  end
end
