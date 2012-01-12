class CreateLongAnswerAnswers < ActiveRecord::Migration
  def change
    create_table :long_answer_answers do |t|

      t.timestamps
    end
  end
end
