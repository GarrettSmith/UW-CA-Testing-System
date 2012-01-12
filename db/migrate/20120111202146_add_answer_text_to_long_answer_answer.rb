class AddAnswerTextToLongAnswerAnswer < ActiveRecord::Migration
  def change
    add_column :long_answer_answers, :text, :text
  end
end
