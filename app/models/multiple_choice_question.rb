# == Schema Information
#
# Table name: questions
#
#  id              :integer         not null, primary key
#  possible_marks  :float
#  text            :text
#  bonus           :boolean
#  name            :string(255)
#  answerable_id   :integer
#  answerable_type :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  test_id         :integer
#  type            :string(255)
#

class MultipleChoiceQuestion < Question
  has_many :multiple_choice_answers
  has_many :options
  has_one :solution, :class_name => "MultipleChoiceOption",
    :foreign_key => "solution_id"
end
