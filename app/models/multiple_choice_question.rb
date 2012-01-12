class MultipleChoiceQuestion < ActiveRecord::Base
  has_many :multiple_choice_answers
  has_many :options
end
