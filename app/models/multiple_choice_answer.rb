# == Schema Information
#
# Table name: answers
#
#  id              :integer         not null, primary key
#  earned_marks    :float
#  time_taken      :float
#  time_submitted  :datetime
#  created_at      :datetime
#  updated_at      :datetime
#  student_test_id :integer
#  question_id     :integer
#  type            :string(255)
#  text            :text
#

class MultipleChoiceAnswer < Answer
  belongs_to :multiple_choice_question
  has_one :option
end
