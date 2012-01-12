class MultipleChoiceAnswer < ActiveRecord::Base
  belongs_to :multiple_choice_question
  has_one :option
end
