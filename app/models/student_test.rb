# == Schema Information
#
# Table name: student_tests
#
#  id                  :integer         not null, primary key
#  time_started        :datetime
#  time_submitted      :datetime
#  created_at          :datetime
#  updated_at          :datetime
#  enrolled_student_id :integer
#  section_test_id     :integer
#

# A collection of answers to a test created by a student.
class StudentTest < ActiveRecord::Base
  belongs_to :enrolled_student
  belongs_to :section_test
  has_many :answers

  attr_accessible :time_started, :time_submitted

  # a shortcut to refer to the test's student
  def student
    enrolled_student.student
  end

  # A shortcut to refer to a test's section
  def section
    section_test.section
  end

  # The time take is the time the test was submitted minus the time it 
  # was started
  def time_taken
    @time_submitted - @time_started
  end

  # The sum of all marks earned by each answers.
  def earned_marks
    answers.map{ |x| x.earned_marks }.inject(0, :+)
  end

  # The percentage earned by this test.
  def percentage
    ( earned_marks / section_test.possible_marks ) * 100
  end

  # A test is submitted if the time it was submitted is not nil.
  def submitted?
    not @time_submitted.nil?
  end

  def all_answers_submitted?
    # maps answers to an array of booleans then checks if it contains a 
    # false. If it does not then all answers are submitted.
    not answers.map{ |x| x.submitted? }.include?(false)
  end

  # Returns true if all answers are marked.
  def marked?
    not answers.map{ |x| x.marked? }.include?(false)
  end

  # Returns true if the student test can still be modified by the student.
  def active?
    self.section_test.active? && ( not self.submitted? )
  end

end
