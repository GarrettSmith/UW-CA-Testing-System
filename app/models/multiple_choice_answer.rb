class MultipleChoiceAnswer < Answer
  belongs_to :multiple_choice_question
  has_one :option
end
