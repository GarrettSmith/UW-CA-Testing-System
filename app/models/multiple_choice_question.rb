class MultipleChoiceQuestion < ActiveRecord::Base
  has_many :multiple_choice_answers
  has_many :options
  has_one :solution, :class_name => "MultipleChoiceOption",
    :foreign_key => "solution_id"
end
