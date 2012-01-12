class CreateLongAnswerQuestions < ActiveRecord::Migration
  def change
    create_table :long_answer_questions do |t|

      t.timestamps
    end
  end
end
