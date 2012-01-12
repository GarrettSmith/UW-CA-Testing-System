# An abstract answer to a question.
class Answer < ActiveRecord::Base
  belongs_to :student_test

  attr_accessible :earned_marks, :time_submitted, :time_taken

  # An answer has been submitted if the time it was submitted is not nil.
  def submitted? 
    not @time_submitted.nil?
  end

  # The percentage of marks earned by this answer.
  def percentage
    (@earned_marks / self.question.possible_marks) * 100
  end
end
