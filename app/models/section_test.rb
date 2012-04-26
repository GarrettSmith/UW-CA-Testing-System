# == Schema Information
#
# Table name: section_tests
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  description    :text
#  start_time     :datetime
#  end_time       :datetime
#  time_submitted :datetime
#  created_at     :datetime
#  updated_at     :datetime
#  section_id     :integer
#

# A collection of questions associated with a section and student tests.
class SectionTest < ActiveRecord::Base

  include MathHelper
  include TimeInfo

  has_many :questions
  has_many :student_tests
  belongs_to :section

  attr_accessible :name, :description
  attr_accessible :start_time, :end_time, :time_submitted

  validates :name,        :presence => true
  validates :start_time,  :presence => true
  validates :end_time,    :presence => true
  validates :section,     :presence => true

  # The sum of the possible marks of all non bonus questions.
  def possible_marks
    # Filter out all bonus questions, then maps them to their possible
    # marks and sums them together.
    questions.reject{ |x| x.bonus }.map{ |x| x.possible_marks }.
      inject(0, :+)
  end

  # The average marks earned by all the student test.
  def average_marks_earned
    total = student_tests.map{ |x| x.earned_marks }.inject(0, :+)
    total / student_tests.size
  end

  # The average percentage earned.
  def average_marks_earned_percentage
    ( average_marks_earned / possible_marks ) * 100
  end

  # The median marks earned by all the student tests.
  def median_marks_earned
    marks = student_test.map{ |x| x.earned_marks }
    median(marks)
  end

  # The average time taken to write all the student tests.
  def average_time_taken
    total = student_tests.map{ |x| x.time_taken }.inject(0, :+)
    total / student_tests.size
  end

  # The median time take to write all the student tests.
  def median_time_taken
    times = student_tests.map{ |x| x.time_taken }
    median(times)
  end

  # A test is submitted and it's marks are made available if the time 
  # submitted is not nil.
  def submitted?
    not @time_submitted.nil?
  end

  # Returns true if all student tests have been marked.
  def marked?
    not student_tests.map{ |x| x.marked? }.include?(false)
  end

end
