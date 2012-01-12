class LongAnswerAnswer < Answer
  belongs_to :long_answer_question

  attr_accessible :text
end
